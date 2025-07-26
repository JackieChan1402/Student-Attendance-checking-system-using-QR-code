using Microsoft.EntityFrameworkCore;
using Microsoft.VisualBasic;
using Newtonsoft.Json;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class AttendanceService : IAtendanceService
    {
        private readonly ServerDataContext _context;
        public AttendanceService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task AddRangeAsync(List<AttendanceDto> attendances)
        {
            foreach (var dto in attendances)
            {
                bool exists = await _context.attendance_Sheets.AnyAsync(a =>
                a.ID_student == dto.ID_student &&
                a.ID_subject == dto.ID_subject &&
                a.ID_class == dto.ID_class &&
                a.Day_learn == dto.Day_learn &&
                a.Academic_Year == dto.Academic_Year);

                if (!exists)
                {
                    var entity = new Attendance_sheet
                    {
                        ID_student = dto.ID_student,
                        ID_subject = dto.ID_subject,
                        ID_class = dto.ID_class,
                        Day_learn = dto.Day_learn,
                        Academic_Year = dto.Academic_Year,
                        ID_status = dto.ID_status,
                        Note = dto.Note
                    };
                    await _context.attendance_Sheets.AddAsync(entity);
                }

            }
            await _context.SaveChangesAsync();
        }

        public async Task<List<Attendance_sheet>> getAllAsync()
        {
            return await _context.attendance_Sheets.ToListAsync();
        }

        public async Task<AttendanceExportDto> GetAttendanceDataAsync(string classID, string subjectID, int academicYear)
        {
            var students = await _context.student_Subject_Classes
                .Where(ssc => ssc.ID_subject == subjectID &&
                              ssc.ID_class == classID &&
                              ssc.Academic_year == academicYear)
                .Include(ssc => ssc.student)
                .Select(ssc => new StudentForAttendanceDto
                {
                    student_id = ssc.student.ID_student,
                    student_name = ssc.student.User_university.User_name,
                    UUID = ssc.student.UUID,
                    Status = null
                }).ToListAsync();
            if (students == null || !students.Any())
            {
                return null;
            }
            return new AttendanceExportDto
            {
                subject_id = subjectID,
                class_id = classID,
                academic_year = academicYear,
                students = students
            };
        }

        public async Task<List<AttendanceRecordDto>> GetAttendanceForStudentAsync(string studentId,string classId, string subjectId, int academicYear)
        {
            var records = await _context.attendance_Sheets
                .Where(a => a.ID_student == studentId &&
                        a.ID_subject == subjectId &&
                        a.ID_class == classId &&
                        a.Academic_Year == academicYear)
                .Include(a => a.Status)
                .Select(a => new AttendanceRecordDto
                {
                    DateAttendance = a.Day_learn,
                    Status = a.Status.Name_status,
                    Note = a.Note
                }).ToListAsync();
            return records;
        }


        public async Task<List<StudentAttendanceDto>> GetAttendanceForTeacherAsync(string subjectId, string classId, int academicYear)
        {
            var records = await _context.attendance_Sheets
                .Where(a => a.ID_subject == subjectId &&
                            a.ID_class == classId &&
                            a.Academic_Year == academicYear)
                .Include(a => a.Status)
                .Include(a => a.Student)
                    .ThenInclude(ssc => ssc.User_university)
                .GroupBy(a => new
                {
                    a.ID_student,
                    a.Student.User_university.User_name,
                    a.Student.User_university.Email,
                })
                .Select(g => new StudentAttendanceDto
                {
                    Student_ID = g.Key.ID_student,
                    Student_Name = g.Key.User_name,
                    AttendanceRecords = g.Select(a => new AttendanceRecordDto
                    {
                        DateAttendance = a.Day_learn,
                        Status = a.Status.Name_status,
                        Note = a.Note
                    }).ToList()
                }).ToListAsync();
            return records;
        }

        public async Task<List<AttendancePivotDto>> GetAttendancePivotAsync(string classId, string subjectId, int academicYear)
        {
            var allSessions = await _context.attendance_Sheets
                .Where(a => a.ID_class == classId &&
                            a.ID_subject == subjectId &&
                            a.Academic_Year == academicYear)
                .OrderBy(d => d.Day_learn)
                .Select(a => a.Day_learn)
                .Distinct()
                .ToListAsync();

            var timeToLectureLabel = new Dictionary<DateTime, string>();
            var groupedByDate = allSessions.GroupBy(x =>  x.Date);
            foreach (var group in groupedByDate )
            {
                int lectureNumber = 1;
                foreach (var time in group.OrderBy(x => x))
                {
                    string label = $"{group.Key:yyyy-MM-dd} - L{lectureNumber}";
                    timeToLectureLabel[time] = label ;
                    lectureNumber++;
                }
            }

            var studentIDs = await _context.student_Subject_Classes
                .Where(a => a.ID_class == classId && 
                            a.ID_subject == subjectId &&
                            a.Academic_year == academicYear)
                .Select(a => a.ID_student)
                .Distinct()
                .ToListAsync();

            var students = await _context.student_Information
                .Where(s => studentIDs.Contains(s.ID_student))
                .Include(s => s.User_university)
                 .ToListAsync();

            var attendanceRecords = await _context.attendance_Sheets
                .Where(a => studentIDs.Contains(a.ID_student) &&
                            a.ID_class == classId &&
                            a.ID_subject == subjectId &&
                            a.Academic_Year == academicYear)
                .Include(a => a.Status)
                .ToListAsync();

            var result = students.Select(student =>
            {
                var row = new AttendancePivotDto
                {
                    StudentID = student.ID_student,
                    Name = student.User_university.User_name,
                    Email = student.User_university.Email,
                    AttendanceByDateTime = new Dictionary<string, string>()
                };

                foreach (var session in allSessions)
                {
                    string key = timeToLectureLabel[session];
                    var record = attendanceRecords
                    .FirstOrDefault(a => a.ID_student == student.ID_student && a.Day_learn == session);

                    row.AttendanceByDateTime[key] = record?.Status?.ID_status.ToString() ?? "N/A";
                }
                return row;
            }).ToList();
            return result;
                
        }

        public async Task ProcessAttendanceFromFileAsync(IFormFile file)
        {
            if (file == null || file.Length == 0)
            {
                throw new ArgumentNullException("File Not valid");
            }
            using var stream = new StreamReader(file.OpenReadStream());
            var jsonString = await stream.ReadToEndAsync();

            var data = JsonConvert.DeserializeObject<CopyAttendanceDto>(jsonString);

            if (data == null || data.students == null) throw new ArgumentNullException("Data not valid");

            var records = new List<AttendanceDto>();
            
            foreach (var student in data.students)
            {
                var attendance = new AttendanceDto
                {
                    ID_student = student.student_id,
                    ID_class = data.class_id,
                    ID_subject = data.subject_id,
                    Day_learn = ConvertUtcToVietnam(student.dateTime),
                    Academic_Year = data.academic_year,
                    ID_status = student.Status,
                    Note = student.Note

                };
                records.Add(attendance);
            }
            await AddRangeAsync(records);
        }
        public static DateTime ConvertUtcToVietnam(DateTime dt)
        {
            var utcTime = DateTime.SpecifyKind(dt, DateTimeKind.Utc);
            return TimeZoneInfo.ConvertTimeFromUtc(utcTime, TimeZoneInfo.FindSystemTimeZoneById("SE Asia Standard Time"));
        }

    }
}
