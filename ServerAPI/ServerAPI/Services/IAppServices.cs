using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
namespace ServerAPI.Services
{
    public interface IUserService
    {
        Task<List<User_university>> GetAllAsync();
        Task<User_university?> GetByEmailAsync(string email);
        Task<User_university> GetByIDAsync(int id);
        //Task<User_university> CreateUserAsync(User_university user);
       
        Task<bool> UpdateAsync(string email, UserChangeInformation user);
        Task DeleteAsync(string email);
        Task<User_university> AddUserwithRoleAsync(UserCreateRequest requset);
        Task<bool> ChangePassword(int UserID,string newPassword);
        Task SendOtpForPasswordResetAsync(string email);
        Task< bool> VerifyOtp(string email, string inputOtp);
      

    }
    public interface IClassService
    {
        Task<List<Class>> GetAllAsync();
        Task<Class> GetByIdAsync(string id);
        Task<Class> CreateClassAsync(Class classroom);

        Task<bool> UpdateAsync(string id, [FromBody] Class classroom);
        Task<bool> DeleteAsync(string id);
    }
    public interface IDepartmentService
    {
        Task<List<Department>> GetAllAsync();
        Task<Department?> GetByIdAsync(String id);
        Task<Department> CreateDepartmentAsync(Department department);

        Task<bool> UpdateAsync(string id, DepartmentDto department);
        Task DeleteAsync(string id);
    }
    public interface IMajorService
    {
        Task<List<Major>> GetAllAsync();
        Task<Major?> GetByIdAsync(string id);
        Task<Major> CreateMajorAsync(Major major);

        //Task AddAsync(Major major);
        Task<bool> UpdateAsync(string id, [FromBody] Major major);
        Task DeleteAsync(string id);
    }
    public interface IStudentInformationService
    {
        Task<List<Student_information>> GetAllAsync();
        Task<Student_information?> GetByIdAsync(string id);
        Task<Student_information> GetByUserIdAsync(int userId);
        Task<bool> AddAsync(Student_information student);
        Task<bool> UpdateAsync(string id, StudentDto student);
        Task DeleteAsync(string id);
        Task<bool> UpdateStudentAsync(string id, StudentUpdateDto updateDto);
    }
    public interface ITeacherInformationService
    {
        Task<List<Teacher_information>> GetAllAsync();
        Task<Teacher_information?> GetByIdAsync(string id);
        Task<Teacher_information> GetByUserIDAsync(int userID);
        Task<bool> AddAsync(Teacher_information teacher);
        Task<bool> UpdateAsync(string id, TeacherDto  teacher);
        Task DeleteAsync(string id);
        Task<StudentChangeLog> GetPendingChangeLogAsync(string studentId);
        Task ApproveChangeAsync(int changeLogId, string teacherId);
        Task<List<StudentChangeLog>> GetStudentChangeLog(string studentId);
    }
    public interface ISubjectMajorService
    {
        Task<List<Subject_major>> GetAllAsync();
        Task<Subject_major?> GetByIdAsync(string id);
        Task<Subject_major> CreateSubjectAsync(Subject_major subject);

        Task<bool> UpdateAsync(string id, SubjectMajorDto subject);
        Task DeleteAsync(string id);
    }
    public interface ILectureinforBySubject
    {
        Task<List<Lecture_information_by_subject>> GetAllAsync();
        Task<List<ClassBySubject>> GetBySubject(string subjectid);
        Task<bool> AddLectureInforAsync(CreateLectureDto lectures);
        Task<bool> DeleteLecture(string subject);
        Task<bool> UpdateAsync(string subject, LectureDto lecture);
        Task<List<TeacherWithSubjectDto>> GetTeacherWithSubjectByClass(string classId);
        Task<List<ClassAndSubjectByteacherDto>> GetClassAndSubjectByTeacherAsync(string teacherId);

        Task<InfroTeacherDto> GetTeacherInforBySubjectClassAsync(string subjectId, string classId, int academicYear);
    }
    public interface IStudentSubjectClass
    {
        Task<List<Student_Subject_Class>> GetAllAsync();
        Task<List<StudentFlowClassDto>> GetStudentsBySubjectClassAndYear(string idClass, string idSubject, int academicyear);
        Task AddStudentToClass(StudentToClassDto dto);
        Task<bool> RemoveStudentAsync(string subjectID, string classID, int academicYear, string studentID);
        Task<List<SubjectClassForStudentDto>> GetSubjectClassForStudentAsync(string studentId);
    }
    public interface IAtendanceService
    {
        Task<List<Attendance_sheet>> getAllAsync();
        Task AddRangeAsync(List<AttendanceDto> attendances);
        Task ProcessAttendanceFromFileAsync(IFormFile file);
        Task<List<StudentAttendanceDto>> GetAttendanceForTeacherAsync(string subjectId, string classId, int academicYear);
        Task<List<AttendanceRecordDto>> GetAttendanceForStudentAsync(string studentId,string classId, string subjectId, int academicYear);
        Task<List<AttendancePivotDto>> GetAttendancePivotAsync(string classId, string subjectId, int academicYear);
        Task<AttendanceExportDto> GetAttendanceDataAsync(string classID, string subjectID, int academicYear);
    }
}