using System.Text;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class AttendanceController: ControllerBase
    {
        private readonly IAtendanceService _service;
        public AttendanceController(IAtendanceService service)
        {
            _service = service;
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Attendance_sheet>>> GetAll()
        {
            return Ok(await _service.getAllAsync());
        }

        [Authorize(Roles ="Teacher")]
        [HttpPost("upload")]
        [Consumes("multipart/form-data")]
        public async Task<ActionResult> AddAttendance( IFormFile file)
        {
            try
            {
                await _service.ProcessAttendanceFromFileAsync(file);
                return Ok("Send data successfully");
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize(Roles ="Teacher")]
        [HttpGet("teacher")]
        public async Task<ActionResult> GetAttendanceForTeacher([FromQuery] string subjectId, [FromQuery] string classId, [FromQuery] int academicYear)
        {
            var result = await _service.GetAttendanceForTeacherAsync(subjectId, classId, academicYear);
            //if (!result.Any()) return NotFound("No attendance data found");
            return Ok(result);
        }

        [Authorize(Roles ="Student")]
        [HttpGet("student")]
        public async Task<ActionResult> GetAttendanceForStudent([FromQuery] string studentId,[FromQuery] string classId, [FromQuery] string subjectId, [FromQuery] int academicYear)
        {
            var result = await _service.GetAttendanceForStudentAsync(studentId, classId, subjectId, academicYear);
            //if (!result.Any()) return NotFound("No attendance data found");
            return Ok(result);
        }

        [Authorize(Roles ="Teacher")]
        [HttpGet("pivot")]
        public async Task<ActionResult<List<AttendancePivotDto>>> GetAttendancePivot([FromQuery] string classId, [FromQuery] string subjectId, [FromQuery] int academicYear)
        {
            var result = await _service.GetAttendancePivotAsync(classId, subjectId, academicYear);
            return Ok(result);
        }

        [Authorize]
        [HttpGet("dowload-json")]
        public async Task<ActionResult> DowloadAttendanceJson([FromQuery] string classId, [FromQuery] string subjectId, [FromQuery] int academicYear)
        {
            var exportDto = await _service.GetAttendanceDataAsync(classId, subjectId, academicYear);
            if (exportDto == null) return NotFound("There are no list student in this class.");

            var json = JsonConvert.SerializeObject(exportDto, Formatting.Indented);
            var fileName = $"Attendance_{subjectId}_{classId}_{academicYear}.json";
            var fileBytes = Encoding.UTF8.GetBytes(json);
            return File(fileBytes, "application/json", fileName);
        }
    }
}
