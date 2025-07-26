using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class ClassController :ControllerBase
    {
        private readonly IClassService _classService;
        public ClassController (IClassService classService)
        {
            _classService = classService;
        }

        [Authorize(Roles ="Admin,Teacher")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<ClassDto>>> GetClasses()
        {
            return Ok(await _classService.GetAllAsync());
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet("{id}")]
        public async Task<ActionResult<ClassDto>> GetClass(string id)
        {
            var classroom = await _classService.GetByIdAsync(id);
            if (classroom == null) return NotFound();
            return Ok(classroom);
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpPost]
        public async Task<ActionResult> AddClass([FromBody] Class classroom)
        {
            try
            {
                var success = await _classService.CreateClassAsync(classroom);
                return Ok(success);
            }
            catch (Exception ex)
            {
                return StatusCode(500,ex.Message);
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpPut("{id}")]
        public async Task<ActionResult> UpdateClass (string id, [FromBody] Class classroom)
        {
            try
            {
                var success = await _classService.UpdateAsync(id, classroom);
                return success ? Ok("Majors updated successfully.") : BadRequest("Update failed.");

            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteClass (string id)
        {
            var result = await _classService.DeleteAsync(id);
            if (!result) return NotFound();
            return NoContent();
        }
    }
}
