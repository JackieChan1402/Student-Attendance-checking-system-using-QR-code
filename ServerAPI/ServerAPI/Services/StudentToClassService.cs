using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class StudentToClassService : IStudentSubjectClass
    {
        private ServerDataContext _context;
        public StudentToClassService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task AddStudentToClass(StudentToClassDto dto)
        {
            var existing = await _context.student_Subject_Classes
                .Where(s => s.ID_subject == dto.ID_subject &&
                            s.ID_class == dto.ID_class &&
                            s.Academic_year == dto.Academic_Year)
                .Select(s => s.ID_student).ToListAsync();
            var newStudents = dto.ID_students.Except(existing);

            foreach (var studentId in newStudents)
            {
                    var entry = new Student_Subject_Class
                    {
                        ID_student = studentId,
                        ID_subject = dto.ID_subject,
                        ID_class = dto.ID_class,
                        Academic_year = dto.Academic_Year
                    };
                    await _context.student_Subject_Classes.AddAsync(entry);
               
            }
            await _context.SaveChangesAsync();
        }

        public async Task<List<Student_Subject_Class>> GetAllAsync()
        {
            return await _context.student_Subject_Classes.ToListAsync();
        }

        public async Task<List<StudentFlowClassDto>> GetStudentsBySubjectClassAndYear(string idClass, string idSubject, int academicyear)
        {
            var students = await _context.student_Subject_Classes
                .Where(s => s.ID_subject == idSubject &&
                              s.ID_class == idClass &&
                              s.Academic_year == academicyear)
                .Include(s => s.student)
                    .ThenInclude(st => st.User_university)
                .Select(s => new StudentFlowClassDto
                {
                    Student_ID = s.student.ID_student,
                    Student_Name = s.student.User_university.User_name,
                    Email = s.student.User_university.Email
                }).ToListAsync();
            return students;
        }

        public async Task<List<SubjectClassForStudentDto>> GetSubjectClassForStudentAsync(string studentId)
        {
            var result = await _context.student_Subject_Classes
                 .Where(ssc => ssc.ID_student == studentId)
                 .Select(ssc => new SubjectClassForStudentDto
                 {
                     subjectId = ssc.ID_subject,
                     classId = ssc.ID_class,
                     academicYear = ssc.Academic_year
                 }).ToListAsync();
            return result;
        }

        public async Task<bool> RemoveStudentAsync(string subjectID, string classID, int academicYear, string studentID)

        {
            var studentInClass = await _context.student_Subject_Classes
                .FirstOrDefaultAsync(s => s.ID_subject == subjectID &&
                            s.ID_class == classID &&
                            s.Academic_year == academicYear &&
                            s.ID_student == studentID);
            if (studentInClass == null)
            {
                return false;
            }
            _context.student_Subject_Classes.Remove(studentInClass);
            _context.SaveChanges();
            return true;
        }
        
    }
}
