using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class StudentToClassController : ControllerBase
    {
        private IStudentSubjectClass _studentClassService;
        public StudentToClassController(IStudentSubjectClass studentClassService)
        {
            _studentClassService = studentClassService;
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Student_Subject_Class>>> GetAllAsync()
        {
            return Ok(await _studentClassService.GetAllAsync());
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet("students-flow-class")]
        public async Task<ActionResult> GetStudentsBySubjectClassAndAcademicYear([FromQuery] string subjectId, [FromQuery] string classId, [FromQuery] int academicYear)
        {
            var students = await _studentClassService.GetStudentsBySubjectClassAndYear(classId, subjectId, academicYear);

            if (students == null || !students.Any()) return NotFound("There is no student in this class.");
            return Ok(students);
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpPost("")]
        public async Task<ActionResult> AddStudentToClass([FromBody] StudentToClassDto dto)
        {
           
            if (dto.ID_students == null || !dto.ID_students.Any())
                {
                return BadRequest("There are no student in Class");
            }
            await _studentClassService.AddStudentToClass(dto);
            return Ok("Add student successfully!");
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpDelete("Remove-student/{studentID}")]
        public async Task<ActionResult> RemoveStudent(string studentID, [FromQuery] string classID, [FromQuery] string subjectID, [FromQuery] int academicYear)
        {
            var result = await _studentClassService.RemoveStudentAsync(subjectID, classID, academicYear, studentID);
            if (!result)
            {
                return BadRequest("Can not remove this student. May be this student not in this course");
            }
            return Ok("Remove this student out this course Done.");
        }

        [Authorize(Roles ="Admin,Student")]
        [HttpGet("Subject-Class-For-Student/{studentId}")]
        public async Task<ActionResult> GetSubjectClassForStudent(string studentId)
        {
            var data = await _studentClassService.GetSubjectClassForStudentAsync(studentId); 
            return Ok(data);
        }
       
    }
}
