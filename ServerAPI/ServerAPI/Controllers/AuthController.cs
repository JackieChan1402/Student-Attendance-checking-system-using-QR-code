using ServerAPI.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using System.Security.Claims;
using Microsoft.IdentityModel.Tokens;
using System.Text;
using System.IdentityModel.Tokens.Jwt;
using BCrypt.Net;
namespace ServerAPI.Controllers
{
    [ApiController]
    [Route("api.[controller]")]
    public class AuthController : ControllerBase
    {
        private readonly ServerDataContext _context;
        private readonly IConfiguration _config;
        private static Dictionary<int, string> _activeTokens = new Dictionary<int, string>();
        public AuthController(ServerDataContext context, IConfiguration config)
        {
            _config = config;
            _context = context;
        }

        [HttpPost("login")]
        public async Task<IActionResult> Login([FromBody] LoginRequest request)
        {
            var user = await _context.user_Universities
                .Include(u => u.Role_Person)
                .FirstOrDefaultAsync(u => u.Email == request.Email);

            if (user == null || !BCrypt.Net.BCrypt.Verify(request.Password, user.Password_user)) return Unauthorized("Email or password Wrong.");

            if (_activeTokens.ContainsKey(user.ID_User))
            {
                _activeTokens.Remove(user.ID_User);
            }
            var token = GenerateJwtToken(user);
            return Ok(new LoginRespone { Token = token });
        }
        private string GenerateJwtToken(User_university user)
        {
           
                var claims = new[]
                {
                new Claim(ClaimTypes.NameIdentifier, user.ID_User.ToString()),
                new Claim(ClaimTypes.Name, user.User_name),
                new Claim(ClaimTypes.Role, user.Role_Person?.Name_role ?? "User")
            };

                var key = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(_config["Jwt:Key"]));
                var creds = new SigningCredentials(key, SecurityAlgorithms.HmacSha256);

            Console.WriteLine($"Login with: {user.Email} - Role: {user.Role_Person?.Name_role}");

            var token = new JwtSecurityToken(
                    issuer: _config["Jwt:Issuer"],
                    audience: _config["Jwt:Audience"],
                    claims: claims,
                    expires: DateTime.UtcNow.AddHours(5),
                    signingCredentials: creds);
                return new JwtSecurityTokenHandler().WriteToken(token);
            
            
        }
    }
}
