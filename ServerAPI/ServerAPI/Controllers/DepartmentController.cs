using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class DepartmentController : ControllerBase
    {
        private readonly IDepartmentService _departmentService;

        public DepartmentController(IDepartmentService departmentService)
        {
            _departmentService = departmentService;
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Department>>> GetDepartments()
        {
            return Ok(await _departmentService.GetAllAsync());
        }

        [Authorize]
        [HttpGet("{id}")]
        public async Task<ActionResult<Department>> GetDepartment (string id)
        {
            var department = await _departmentService.GetByIdAsync(id);
            if (department == null) return NotFound();
            return Ok(department);
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult> CreateDepartment([FromBody] Department department)
        {
            if (department == null) return BadRequest("Department data is required .");
            var result = await _departmentService.CreateDepartmentAsync(department);
            return Ok(result);
        }

        [Authorize(Roles = "Admin")]
        [HttpPatch("{id}")]
        public async Task<ActionResult> UpdateDepartment (string id, DepartmentDto department)
        {
            var result = await _departmentService.UpdateAsync(id, department);
            if (!result) return NotFound();
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{id}")]
        public async Task<ActionResult> DeleteDepartment(string id)
        {
            await _departmentService.DeleteAsync(id);
            return NoContent();
        }
    }
}
