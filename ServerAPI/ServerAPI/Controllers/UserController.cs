
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
    public class UserController : ControllerBase
    {
        private readonly IUserService _userService;
        public UserController (IUserService userService)
        {
            _userService = userService;
        }

        [Authorize(Roles = "Admin")]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<User_university>>> GetUsers()
        {
            return Ok(await _userService.GetAllAsync());
        }

        [Authorize(Roles = "Admin")]
        [HttpGet("{email}")]
        public async Task<ActionResult<User_university>> GetUser(string email)
        {
            var user = await _userService.GetByEmailAsync(email);
            if (user == null) return NotFound();
            return Ok(user);
        }

        [Authorize(Roles = "Admin")]
        [HttpPost]
        public async Task<ActionResult> AddUser([FromBody] UserCreateRequest user)
        {
            if (user == null) return BadRequest("User data is required.");
            var result = await _userService.AddUserwithRoleAsync(user);
            return Ok(result);
        }

        [Authorize(Roles = "Admin")]
        [HttpPatch("{email}")]
        public async Task<ActionResult> UpdateUser (string email, [FromBody] UserChangeInformation dto)
        {
            var result = await _userService.UpdateAsync(email, dto);
            if (!result) return NotFound();
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{email}")]
        public async Task<ActionResult> DeleteUser (string email)
        {
            await _userService.DeleteAsync(email);
            return NoContent();
        }

        [HttpGet("me/{email}")]
        public async Task<ActionResult<User_university>> GetMyProfile(string email)
        {
            var userId = await _userService.GetByEmailAsync(email);

            if (userId == null)
            {
                return BadRequest("Not found the user have this email");
            }
            return Ok(userId);
        }

        [HttpPost("change-password/{userID}")]
        public async Task<ActionResult> ChangePasswordInFirstTme(int userID, string password)
        {
            var result = await _userService.ChangePassword(userID, password);
            if ( !result)
            {
                return BadRequest("You can not changePassword because not forgot it.");
            }
            return Ok("Change Password successfully!");
        }

        [HttpPost("send-otp")]
        public async Task<ActionResult> SendOtp([FromBody] ForgotPasswordRequest request)
        {
            
            await _userService.SendOtpForPasswordResetAsync(request.Email);
            return Ok("OTP sent successfully");
        }

        [HttpPost("verify-otp")]
        public async Task<ActionResult> VerifyOtp([FromBody] VerifyOtpRequest request)
        {
            var isValid = await _userService.VerifyOtp(request.Email, request.OTP);
            if (isValid)
            {
                return Ok("OTP is valid. You can reset your password now.");
            }
            return BadRequest("Invalid or expired OTP");
        }
    }
}
