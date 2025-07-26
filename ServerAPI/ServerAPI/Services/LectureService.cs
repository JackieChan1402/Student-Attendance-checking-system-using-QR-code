using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class LectureService: ILectureinforBySubject
    {
        private readonly ServerDataContext _context;
        private object lecture_Information_By_Subjects;

        public LectureService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task<bool> AddLectureInforAsync(CreateLectureDto lectures)
        {
            var teacher = await _context.teacher_Information.FirstOrDefaultAsync(t => t.ID_teacher == lectures.ID_teacher);
            if (teacher == null) return false;
            var subject = await _context.subject_Majors.FirstOrDefaultAsync(s => s.ID_subject == lectures.ID_subject);
            if (subject == null)
            {
                return false;
            }
            var classEntity = await _context.Classes.FirstOrDefaultAsync(c => c.ID_class == lectures.ID_class);
            if (classEntity == null) return false;

            var lecture = new Lecture_information_by_subject
            {
                ID_teacher = lectures.ID_teacher,
                ID_class = lectures.ID_class,
                ID_subject = lectures.ID_subject,
                Academic_Year = lectures.Academic_year,
                Teacher = teacher,
                Subject = subject,
                Class = classEntity
            };
            await _context.lecture_Information_By_Subjects.AddAsync(lecture);
            await _context.SaveChangesAsync();
            return true;
        }

        public async Task<bool> DeleteLecture(string subject)
        {
            if (string.IsNullOrWhiteSpace(subject)) return false;

            var lecture = await _context.lecture_Information_By_Subjects.FirstOrDefaultAsync(l => l.ID_subject == subject);

            if (lecture == null) return false;
            _context.lecture_Information_By_Subjects.Remove(lecture);
            await _context.SaveChangesAsync();
            return true;

        }

        public async Task<List<Lecture_information_by_subject>> GetAllAsync()
        {
            var result = await _context.lecture_Information_By_Subjects
                .Include(t => t.Teacher)
                    .ThenInclude(u => u.User_university)
                        .ThenInclude(r => r.Role_Person)
                .Include(t => t.Teacher).ThenInclude(d => d.DepartmentInfo)
                .Include(c => c.Class)
                .Include(s => s.Subject)
                .ToListAsync();
            return result;
        }

        public async Task<List<ClassBySubject>> GetBySubject(string subjectid)
        {
           
            //if (string.IsNullOrWhiteSpace(subjectid)) return new List<ClassBySubject>();
            var result = await _context.lecture_Information_By_Subjects
                .Where(l => l.ID_subject == subjectid)

            .Select(cl => new ClassBySubject
            {
                ID_class = cl.ID_class,
                ID_teacher = cl.ID_teacher,
                Name_teacher = cl.Teacher.User_university.User_name,
                Contact = cl.Teacher.Contact,
                Email = cl.Teacher.User_university.Email
            })
            .ToListAsync();
            return result;
        }

        public async Task<List<ClassAndSubjectByteacherDto>> GetClassAndSubjectByTeacherAsync(string teacherId)
        {

            //if (string.IsNullOrWhiteSpace(teacherId)) return new List<ClassAndSubjectByteacherDto>();
            var result = await _context.lecture_Information_By_Subjects
                .Where(lec => 
                    lec.ID_teacher == teacherId
                )
            .Select(l => new ClassAndSubjectByteacherDto
            {
                ID_class = l.ID_class,
                ID_subject = l.ID_subject,
                Academic_year = l.Academic_Year,
                Name_subject = l.Subject.Name_subject
            }).ToListAsync();
            return result;
        }

        public async Task<InfroTeacherDto> GetTeacherInforBySubjectClassAsync(string subjectId, string classId, int academicYear)
        {
            var teacher = await _context.lecture_Information_By_Subjects
                .Where(lt => lt.ID_subject == subjectId &&
                             lt.ID_class == classId &&
                             lt.Academic_Year == academicYear)
                .Include(t => t.Teacher)
                    .ThenInclude(u => u.User_university)
                .Select(infor => new InfroTeacherDto
                {
                    teacherName = infor.Teacher.User_university.User_name,
                    department = infor.Teacher.Department,
                    email = infor.Teacher.User_university.Email
                }).FirstOrDefaultAsync();
            return teacher;
        }

        public async Task<List<TeacherWithSubjectDto>> GetTeacherWithSubjectByClass(string classId)
        {
            //if (string.IsNullOrWhiteSpace(classId)) return new List<TeacherWithSubjectDto>();
            var data = await _context.lecture_Information_By_Subjects
                .Where(l => l.ID_class == classId)
               .Select(t => new TeacherWithSubjectDto
               {
                   ID_subject = t.ID_subject,
                   ID_teacher = t.ID_teacher,
                   Subject_Name = t.Subject.Name_subject,
                   Contact = t.Teacher.Contact,
                   Name_teacher = t.Teacher.User_university.Email,
                   Email = t.Teacher.User_university.Email
               }).ToListAsync();
            return data;
        }

        public async Task<bool> UpdateAsync(string subject, LectureDto lecture)
        {
            if (string.IsNullOrWhiteSpace(subject) || lecture == null)
                return false;
            var lectureChange = await _context.lecture_Information_By_Subjects.FirstOrDefaultAsync(l => l.ID_subject == subject);
            if (lectureChange == null) return false;

            if (lecture.Academic_Year.HasValue) lectureChange.Academic_Year = (int)lecture.Academic_Year;
            if (!string.IsNullOrWhiteSpace(lecture.ID_class)) lectureChange.ID_class = lecture.ID_class;
            if (!string.IsNullOrWhiteSpace(lecture.ID_teacher)) lectureChange.ID_teacher = lecture.ID_teacher;

            await _context.SaveChangesAsync();
            return true;
        }
    }
}
