using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class SubjectController : ControllerBase
    {
        private readonly ISubjectMajorService _subjectService;

        public SubjectController(ISubjectMajorService subjectService)
        {
            _subjectService = subjectService;
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Subject_major>>> GetSubjects()
        {
            return Ok(await _subjectService.GetAllAsync());
        }

        [Authorize]
        [HttpGet("{id}")]
        public async Task<ActionResult<Subject_major>> GetSubject(string id)
        {
            var subject = await _subjectService.GetByIdAsync(id);
            if (subject == null) return NotFound();
            return Ok(subject);
        }

        [Authorize(Roles = "Admin")]
        [HttpPatch("{id}")]
        public async Task<ActionResult> UpdateSubject (string id, SubjectMajorDto subject)
        {
            var result = await _subjectService.UpdateAsync(id, subject);
            if (!result) return NotFound();
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteSubjetc(string id)
        {
            await _subjectService.DeleteAsync(id);
            return NoContent();
        }

        [Authorize(Roles ="Admin")]
        [HttpPost]
        public async Task<ActionResult> CreateSubject([FromBody] Subject_major subject_Major)
        {
            if (subject_Major == null) BadRequest("Subject data is required .");
            var result = await _subjectService.CreateSubjectAsync(subject_Major);
            return Ok(result);
        }
    }
}
