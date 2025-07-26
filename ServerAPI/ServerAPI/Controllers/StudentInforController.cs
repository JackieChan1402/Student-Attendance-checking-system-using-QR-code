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
    public class StudentInforController :ControllerBase
    {
        private IStudentInformationService _studentInfor;
        public StudentInforController(IStudentInformationService studentInfor)
        {
            _studentInfor = studentInfor;
        }

        [Authorize(Roles ="Admin,Teacher")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Student_information>>> GetStudents()
        {
            return Ok(await _studentInfor.GetAllAsync());
        }

        [Authorize(Roles ="Admin,Teacher")]
        [HttpGet("{id}")]
        public async Task<ActionResult<Student_information>> GetStudent(string id)
        {
            var student = await _studentInfor.GetByIdAsync(id);
            if (student == null) return NotFound();
            return Ok(student);
        }

        [Authorize]
        [HttpPatch("{id}")]
        public async Task<ActionResult> UpdateStudentInfor (string id, StudentDto student)
        {
            var result = await _studentInfor.UpdateAsync(id, student);
            if (!result) return NotFound();
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteStudent (string id)
            {
            await _studentInfor.DeleteAsync(id);
            return NoContent();
        }
        [Authorize]
        [HttpGet("student-infor")]
        public async Task<ActionResult<Student_information>> GetStudentInformation()
        {
            var userId = int.Parse(User.FindFirst(ClaimTypes.NameIdentifier)?.Value);

            var studentInfor = await _studentInfor.GetByUserIdAsync(userId);

            if (studentInfor == null)
            {
                return NotFound("Student Information not found");
            }
            return Ok(studentInfor);
        }

        [Authorize(Roles ="Student")]
        [HttpPost("{id}")]
        public async Task<ActionResult> RequestChange(string id, StudentUpdateDto dto)
        {
            var result = await _studentInfor.UpdateStudentAsync(id, dto);
            if (!result)
            {
                return BadRequest("You already have a request to change UUID");
            }
            return Ok("Update data to Server done!");
        }
        [Authorize(Roles ="Admin")]
        [HttpGet("student-information-by-email/{userid}")]
        public async Task<ActionResult<Student_information>> GetInformtaion(int userid)
        {
            var studentInfor = await _studentInfor.GetByUserIdAsync(userid);

            if (studentInfor == null)
            {
                return NotFound("Student Information not found");
            }
            return Ok(studentInfor);
        }
    }
}
