using BCrypt.Net;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Caching.Memory;
using ServerAPI.Controllers;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;
namespace ServerAPI.Services
{
    public class UserService : IUserService
    {
        private readonly ServerDataContext _context;
        private readonly IStudentInformationService _studentService;
        private readonly ITeacherInformationService _teacherService;
        private readonly EmailService _emailService;
        private readonly IMemoryCache _cache;
        public UserService (ServerDataContext context, IStudentInformationService studentService, ITeacherInformationService teacherService, EmailService emailService, IMemoryCache cache)
        {
            _context = context;
            _studentService = studentService;
            _teacherService = teacherService;
            _emailService = emailService;
            _cache = cache;
        }
        public async Task<List<User_university>> GetAllAsync()
        {
            var user = await _context.user_Universities
                .Include(u => u.Role_Person)
                .ToListAsync();
            return user;
        }
        public async Task<User_university?> GetByEmailAsync (string  email)
        {
            return await _context.user_Universities.FirstOrDefaultAsync(u => u.Email == email);
        }
       
        public async Task<bool> UpdateAsync (string email, UserChangeInformation user)
        {
            if (string.IsNullOrWhiteSpace(email) || user == null) return false;
            var userChange = await _context.user_Universities.FirstOrDefaultAsync(s => s.Email == email);
            if (userChange == null) return false;


            if (!string.IsNullOrWhiteSpace(user.User_name)) userChange.User_name = user.User_name;
            if (!string.IsNullOrWhiteSpace(user.Email)) userChange.Email = user.Email;
            if (!string.IsNullOrWhiteSpace(user.Password_user)) userChange.Password_user = user.Password_user;
            if (!string.IsNullOrWhiteSpace(user.MajorOrDepartment))
            {
                if (userChange.Role_user == 2)
                {
                    var data = await _context.teacher_Information.FirstOrDefaultAsync(t => t.User_id == userChange.ID_User);
                    if (data == null) return false;
                    data.Department = user.MajorOrDepartment;
                }
                else if (userChange.Role_user == 3)
                {
                    var data = await _context.student_Information.FirstOrDefaultAsync(t => t.User_id == userChange.ID_User);
                    if (data == null) return false;
                    data.ID_major = user.MajorOrDepartment;
                }
            }
            await _context.SaveChangesAsync();
            return true;
        }
        public async Task DeleteAsync (string email)
        {
            var user = await GetByEmailAsync(email);
            if (user != null)
            {
                if (user.Role_user == 3)
                {
                    var student = await _context.student_Information.FirstOrDefaultAsync(s => s.User_id == user.ID_User);
                    if (student != null)
                    {
                        _context.student_Information.Remove(student);

                         var data = await _context.student_Subject_Classes.Where(s => s.ID_student == student.ID_student).ToListAsync();
                        _context.student_Subject_Classes.RemoveRange(data);
                        
                        var dataAttendance = await _context.attendance_Sheets.Where(s => s.ID_student == student.ID_student).ToListAsync();
                        _context.attendance_Sheets.RemoveRange(dataAttendance);
                    }
                }
                else if (user.Role_user == 2)
                {
                    var teacher = await _context.teacher_Information.FirstOrDefaultAsync(t => t.User_id == user.ID_User);
                    if (teacher != null)
                    {
                        _context.teacher_Information.Remove(teacher);
                        var data = await _context.lecture_Information_By_Subjects.Where(l => l.ID_teacher == teacher.ID_teacher).ToListAsync();
                        _context.lecture_Information_By_Subjects.RemoveRange(data);
                    }
                }
                 _context.user_Universities.Remove(user);
                await _context.SaveChangesAsync();
            }
        }

        public async Task<User_university> AddUserwithRoleAsync(UserCreateRequest requset)
        {
            var user = new User_university
            {
                User_name = requset.User_name,
                Email = requset.Email,
                Password_user = BCrypt.Net.BCrypt.HashPassword(requset.Password_user),
                Role_user = requset.Role_user,
                MustChangePassword= true
            };
            await _context.user_Universities.AddAsync(user);
            await _context.SaveChangesAsync();

            if (requset.Role_user == 3)
            {
                var exist = await _context.student_Information
                    .AnyAsync(s => s.ID_student == requset.ID_student);
                if (exist)
                {
                    await DeleteAsync(user.Email);
                    return null;
                }
                var student = new Student_information
                {
                    ID_student = requset.ID_student,
                    User_id = user.ID_User,
                    ID_major = requset.ID_major,
                    Contact = requset.Contact
                };
               var acept =  await _studentService.AddAsync(student);
                if (!acept)
                {
                   await DeleteAsync(user.Email);
                    return null;
                }
               
            }
            else if (requset.Role_user == 2)
            {
                var exist = await _context.teacher_Information
                    .AnyAsync(t => t.ID_teacher == requset.ID_teacher);
                if (exist)
                {
                    await DeleteAsync(user.Email);
                    return null;
                }
                var teacher = new Teacher_information
                {
                    ID_teacher = requset.ID_teacher,
                    User_id = user.ID_User,
                    Contact = requset.Contact,
                    Department = requset.Department
                };
                var accept = await _teacherService.AddAsync(teacher);
                if (!accept)
                {
                    await DeleteAsync(user.Email);
                    return null;
                }
            }
            else
            {
                await _context.user_Universities.AddAsync(user);
                await _context.SaveChangesAsync();
            }
            return user;
        }

        public Task<User_university> GetByIDAsync(int id)
        {
            return  _context.user_Universities
                 .FirstOrDefaultAsync(u => u.ID_User == id);
        }

        public async Task<bool> ChangePassword(int UserID,string newPassword)
        {
            var user = await _context.user_Universities
                .FindAsync(UserID);
            if (user.MustChangePassword)
            {
                user.MustChangePassword = false;
                user.Password_user = BCrypt.Net.BCrypt.HashPassword(newPassword);

                await _context.SaveChangesAsync();
                return true;
            }
            else return false;
           
        }
        public async Task SendOtpForPasswordResetAsync(string email)
        {
            var user = await _context.user_Universities.FirstOrDefaultAsync(u => u.Email == email);
            if (user == null)
            {
                throw new Exception("Email not exsits in System");
            }
            var otp = new Random().Next(100000, 999999).ToString();

            await _emailService.SendOtpAsync(email, otp);
            _cache.Set($"otp_{email}", otp, TimeSpan.FromMinutes(5));
        }
        public async Task<bool> VerifyOtp (string email, string inputOtp)
        {
            if (_cache.TryGetValue<string>($"otp_{email}", out var storeOtp))
            { 
                if (storeOtp == inputOtp)
                {
                    var user = await _context.user_Universities.FirstOrDefaultAsync(u => u.Email == email);
                    if (user == null)
                    {
                        return false;
                    }
                    user.MustChangePassword = true;
                    _cache.Remove($"otp_{email}");
                    await _context.SaveChangesAsync();
                    return true;
                }
            }
            return false;
        }

       
    }
}
