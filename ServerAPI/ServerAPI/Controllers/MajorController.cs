using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class MajorController : ControllerBase
    {
        private readonly IMajorService _majorService;
        public MajorController(IMajorService majorService)
        {
            _majorService = majorService;
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Major>>> GetMajors()
        {
            return Ok(await _majorService.GetAllAsync());
        }

        [Authorize]
        [HttpGet("{id}")]
        public async Task<ActionResult<Major>> GetMajor(string id)
        {
            var major = await _majorService.GetByIdAsync(id);
            if (major == null) return NotFound();
            return Ok(major);
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult> CreateMajor([FromBody] Major major)
        {
            if (major == null) BadRequest("Major data is required .");
            var result = await _majorService.CreateMajorAsync(major);
            return Ok(result);
        }

        [Authorize(Roles = "Admin")]
        [HttpPut("{id}")]
        public async Task<ActionResult> UpdateMajor(string id, Major major)
        {
            var success = await _majorService.UpdateAsync(id, major);
            if (!success)
            {
                return NotFound("Major not found or ID mismatch.");
            }
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteMajor(string id)
        {
            await _majorService.DeleteAsync(id);
            return NoContent();
        }
    }
}
