using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;

namespace ServerAPI.Controllers
{
    [ApiController]
    [Route("api.[controller]")]
    public class TestConnection : ControllerBase
    {
        [AllowAnonymous]
        [HttpGet]
        public IActionResult Get()
        {
            var response = new
            {
                message = "Can connect to Server.",
                time = DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss")
            };
            return Ok(response);
        }
    }
}
