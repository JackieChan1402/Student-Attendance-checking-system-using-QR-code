using System.Security.Claims;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class TeacherInforController : ControllerBase
    {
        private readonly ITeacherInformationService _teacherInfor;
        public TeacherInforController(ITeacherInformationService teacherInfor)
        {
            _teacherInfor = teacherInfor;
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Teacher_information>>> GetTeachers()
        {
            return Ok(await _teacherInfor.GetAllAsync());
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet("{id}")]
        public async Task<ActionResult<Teacher_information>> GetTeacherInfor(string id)
        {
            var teacher = await _teacherInfor.GetByIdAsync(id);
            if (teacher == null) return NotFound();
            return Ok(teacher);
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpPatch("{id}")]
        public async Task<ActionResult> UpdateTeacherInfor(string id, TeacherDto teacher)
        {
            var result = await _teacherInfor.UpdateAsync(id, teacher);
            if (!result) return NotFound();
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteTeacherInfor (string id)
        {
            await _teacherInfor.DeleteAsync(id);
            return NoContent();
        }

        [Authorize(Roles ="Admin,Teacher")]
        [HttpGet("teacher-infor")]
        public async Task<ActionResult<Teacher_information>> GetTeacherInformation()
        {
            var userId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value);

            var teacherInfo = await _teacherInfor.GetByUserIDAsync(userId);

            if (teacherInfo == null)
            {
                return NotFound("Teacher Information not found");
            }
            return Ok(teacherInfo);
        }
        [Authorize(Roles ="Teacher")]
        [HttpGet("student-change-log-not-approve/{id}")]
        public async Task<ActionResult<StudentChangeLog>> GetStudentChangeLogNotApprove(string id)
        {
            var result = await _teacherInfor.GetPendingChangeLogAsync(id);
            return Ok(result);
        }

        [Authorize(Roles ="Teacher")]
        [HttpPost("approve/{logID}")]
        public async Task<ActionResult> ApproveChange(int logID, [FromQuery] string teacherID)
        {
            await _teacherInfor.ApproveChangeAsync(logID, teacherID);
            return Ok("Approve successfully.");
        }

        [Authorize(Roles ="Teacher")]
        [HttpGet("student-change-log-list/{id}")]
        public async Task<ActionResult<List<StudentChangeLog>>> GetStudentChangeLogs(string id)
        {
            var result = await _teacherInfor.GetStudentChangeLog(id);
            return Ok(result);
        }
        [Authorize(Roles ="Admin")]
        [HttpGet("teacher-information-from-email/{userid}")]
        public async Task<ActionResult<Teacher_information>> GetInformation(int userid)
        {
            var teacherInfo = await _teacherInfor.GetByUserIDAsync(userid);

            if (teacherInfo == null)
            {
                return NotFound("Teacher Information not found");
            }
            return Ok(teacherInfo);
        }
    }
}
