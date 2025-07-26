using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class TeacherInfoService : ITeacherInformationService
    {
        private readonly ServerDataContext _context;
        public TeacherInfoService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task<bool> AddAsync(Teacher_information teacher)
        {
            var checkDepartment = await _context.Departments.FindAsync(teacher.Department);
            if (checkDepartment == null) return false;

            await _context.teacher_Information.AddAsync(teacher);
            await _context.SaveChangesAsync();
            return true;
           
        }

        public async Task ApproveChangeAsync(int changeLogId, string teacherId)
        {
            var changeLog = await _context.Student_change_logs.FindAsync(changeLogId);
            if (changeLog == null) throw new KeyNotFoundException("Change log not found");
            if (!string.IsNullOrEmpty(changeLog.Changed_by))
                throw new InvalidOperationException("Change already approved");
            var student = await _context.student_Information.FindAsync(changeLog.ID_student);
            if (student == null) throw new KeyNotFoundException("Student not found");

            student.UUID = changeLog.New_value;
            changeLog.Changed_by = teacherId;
            changeLog.Change_time = DateTime.Now;
            await _context.SaveChangesAsync();
        }

        public async Task DeleteAsync(string id)
        {
            var teacher = await _context.teacher_Information.Include(s => s.User_university).FirstOrDefaultAsync(s => s.ID_teacher == id);
            if (teacher == null) return;

            var userid = teacher.User_id;

            var Lecture = await _context.lecture_Information_By_Subjects.Where(ssc => ssc.ID_teacher == id).ToListAsync();
            _context.lecture_Information_By_Subjects.RemoveRange(Lecture);

            _context.teacher_Information.Remove(teacher);

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

        public async Task<List<Teacher_information>> GetAllAsync()
        {
            var teachers = await _context.teacher_Information
                .Include(d => d.DepartmentInfo)
                .Include(u => u.User_university)
                .ToListAsync();
            return teachers;
        }

        public async Task<Teacher_information?> GetByIdAsync(string id)
        {
            return await _context.teacher_Information.FindAsync(id);
        }

        public async Task<Teacher_information> GetByUserIDAsync(int userID)
        {
            var teacherInfor = await _context.teacher_Information
                .Where(t => t.User_id == userID)
                .Include(u => u.User_university)
                .Include(d => d.DepartmentInfo)
                .FirstOrDefaultAsync();
            return teacherInfor;
        }

        public async Task<StudentChangeLog> GetPendingChangeLogAsync(string studentId)
        {
            var pendingLogs = await _context.Student_change_logs
                .Where(log => log.ID_student == studentId && string.IsNullOrEmpty(log.Changed_by))
                .Include(st => st.Student)
                    .ThenInclude(u => u.User_university).FirstOrDefaultAsync();
            return pendingLogs;
        }

        public async Task<bool> UpdateAsync(string id, TeacherDto teacher)
        {
            if (string.IsNullOrWhiteSpace(id) || teacher == null) return false;
            var teacherChange = await _context.teacher_Information.FirstOrDefaultAsync(s => s.ID_teacher == id);
            if (teacher == null) return false;
            if (!string.IsNullOrWhiteSpace(teacher.Contact)) teacherChange.Contact = teacher.Contact;
            if (!string.IsNullOrWhiteSpace(teacher.Department)) teacherChange.Department = teacher.Department;

            await _context.SaveChangesAsync();
            return true;
        }
        public async Task<List<StudentChangeLog>> GetStudentChangeLog(string studentId)
        {
            var studentLog = await _context.Student_change_logs
                .Where(log => log.ID_student == studentId)
                .Include(u => u.Student)
                    .ThenInclude(us => us.User_university)
                .ToListAsync();
            return studentLog;
        }
    }
}
