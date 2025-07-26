using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class StudentInforService: IStudentInformationService
    {
        private readonly ServerDataContext _context;


        public StudentInforService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task<bool> AddAsync(Student_information student)
        {
            var checkMajor = await _context.Majors.FindAsync(student.ID_major);
            if (checkMajor == null) return false;

            await _context.student_Information.AddAsync(student);
            await _context.SaveChangesAsync();
            return true;
        }

        public async Task DeleteAsync(string id)
        {
            var student = await _context.student_Information.Include(s => s.User_university).FirstOrDefaultAsync(s => s.ID_student == id);
            if (student == null) return;

            var userid = student.User_id;
            
            var attendances = await _context.attendance_Sheets.Where(a => a.ID_student == id).ToListAsync();
            _context.attendance_Sheets.RemoveRange(attendances);

            var subjectClasses = await _context.student_Subject_Classes.Where(ssc => ssc.ID_student == id).ToListAsync();
            _context.student_Subject_Classes.RemoveRange(subjectClasses);

            _context.student_Information.Remove(student);
            
            bool stillUsed = await _context.student_Information.AnyAsync(s => s.User_id == userid && s.ID_student != id) || await _context.teacher_Information.AnyAsync(t => t.User_id == userid);
            if (!stillUsed)
            {
                var user = await _context.user_Universities.FindAsync(userid);
                if (user != null)
                {
                    _context.user_Universities.Remove(user);
                }
            }
            await _context.SaveChangesAsync();
        }

        public async Task<List<Student_information>> GetAllAsync()
        {
            var students = await _context.student_Information
                .Include(u => u.User_university)
                    .ThenInclude(r => r.Role_Person)
                .Include(m => m.Major)
                .ToListAsync();
            return students;
        }

        public async Task<Student_information?> GetByIdAsync(string id)
        {
            var student = await _context.student_Information
                .Where(s => s.ID_student == id)
                .Include(u => u.User_university)
                .Include(m => m.Major)
                .FirstOrDefaultAsync();
            return student;
        }

        public async Task<Student_information> GetByUserIdAsync(int userId)
        {

            var student = await _context.student_Information
                .Where(t => t.User_id == userId)
                .Include(u => u.User_university)
                .Include(m => m.Major)
                .FirstOrDefaultAsync();
            return student;
        }

        public async Task<bool> UpdateAsync(string id, StudentDto student)
        {
            if (string.IsNullOrWhiteSpace(id) || student == null) return false;
            var studentChange = await _context.student_Information.FirstOrDefaultAsync(s => s.ID_student == id);
            if (studentChange == null) return false;

            if (!string.IsNullOrWhiteSpace(student.Contact)) studentChange.Contact = student.Contact;
            if (!string.IsNullOrWhiteSpace(student.ID_major)) studentChange.ID_major = student.ID_major;

            await _context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> UpdateStudentAsync(string id, StudentUpdateDto updateDto)
        {
           var student = await _context.student_Information.FirstOrDefaultAsync(s => s.ID_student == id);
            if (student == null)
            {
                throw new KeyNotFoundException("Student not found");
               
            }
            var pendingLogs = await _context.Student_change_logs
                .FirstOrDefaultAsync(log => log.ID_student == id && string.IsNullOrEmpty(log.Changed_by));
            if (pendingLogs == null)
            {
                if (student.UUID != updateDto.UUID && !string.IsNullOrWhiteSpace(student.UUID))
                {
                    _context.Student_change_logs.Add(new StudentChangeLog
                    {
                        ID_student = id,
                        Field_changed = "UUID",
                        Old_value = student.UUID,
                        New_value = updateDto.UUID,
                        Changed_by = null,
                        Change_time = DateTime.Now
                    });
                }
                else if (string.IsNullOrWhiteSpace(student.UUID))
                {
                    student.UUID = updateDto.UUID;
                }
            }
            else
            {
                return false;
            }

            await _context.SaveChangesAsync();
            return true;
        }
    }
}
