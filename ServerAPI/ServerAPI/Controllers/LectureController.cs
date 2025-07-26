using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using ServerAPI.Dtos;
using ServerAPI.Models;
using ServerAPI.Services;

namespace ServerAPI.Controllers
{
    [Route("api.[controller]")]
    [ApiController]
    public class LectureController : ControllerBase
    {
        private readonly ILectureinforBySubject _lectureService ;
        public LectureController(ILectureinforBySubject lectureService)
        {
            _lectureService = lectureService;
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpPost]
        public async Task<ActionResult> CreateLecture([FromBody] CreateLectureDto lectures)
        { 
            var result = await _lectureService.AddLectureInforAsync(lectures);
            if (!result) return BadRequest("Some thing Wrong!");

            return Ok("Add lecture successfully!");
                
        }

        [Authorize]
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Lecture_information_by_subject>>> GetLectures()
        {
            return Ok(await _lectureService.GetAllAsync());
        }

        [Authorize]
        [HttpGet("class-by-subject/{subject}")]
        public async Task<ActionResult> GetLecture(string subject)
        {
            var lecture = await _lectureService.GetBySubject(subject);
           
            return Ok(lecture);
        }

        [Authorize(Roles = "Admin")]
        [HttpDelete("{subject}")]
        public async Task<ActionResult> DeleteLecture(string subject)
        {
           await _lectureService.DeleteLecture(subject);
            return NoContent();
        }

        [Authorize(Roles = "Admin")]
        [HttpPatch("{subject}")]
        public async Task<ActionResult> UpdateLecture(string subject, [FromBody] LectureDto lecture)
        {
            var result = await _lectureService.UpdateAsync(subject, lecture);
            if (!result)
            {
                return NotFound();
            }
            return NoContent();
        }

        [Authorize]
        [HttpGet("teacher-by-class/{classid}")]
        public async Task<ActionResult> GetTeacherByClass(string classid)
        {
            var result = await _lectureService.GetTeacherWithSubjectByClass(classid);
           
            return Ok(result);
        }

        [Authorize(Roles = "Admin,Teacher")]
        [HttpGet("Classes-and-subject-by-teacher/{teacherid}")]
        public async Task<ActionResult> GetClassAndSubjectByTeacher(string teacherid)
        {
            Console.WriteLine($"teacherId: {teacherid}");
            var result = await _lectureService.GetClassAndSubjectByTeacherAsync(teacherid);

            return Ok(result);
        }

        [Authorize(Roles ="Admin,Student")]
        [HttpGet("Teacher-information-by-subject-class")]
        public async Task<ActionResult> GetInforTeacherBySubjectClass ([FromQuery] string subjectId, [FromQuery] string classId, [FromQuery] int academicYear)
        {
            var data = await _lectureService.GetTeacherInforBySubjectClassAsync(subjectId, classId, academicYear);
            return Ok(data);
        }
    }
}
