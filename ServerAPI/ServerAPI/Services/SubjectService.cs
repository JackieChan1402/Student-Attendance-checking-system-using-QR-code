using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class SubjectService :ISubjectMajorService
    {
        private readonly ServerDataContext _context;
        public SubjectService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task<Subject_major> CreateSubjectAsync(Subject_major subject)
        {
            _context.subject_Majors.Add(subject);
            await _context.SaveChangesAsync();
            return subject;
        }

        public async Task DeleteAsync(string id)
        {
            var subject = await GetByIdAsync(id);
            if(subject != null)
            {
                _context.subject_Majors.Remove(subject);
                await _context.SaveChangesAsync();
            }
        }

        public async Task<List<Subject_major>> GetAllAsync()
        {
            return await _context.subject_Majors.ToListAsync();
        }

        public async Task<Subject_major?> GetByIdAsync(string id)
        {
            return await _context.subject_Majors.FindAsync(id);
        }

        public async Task<bool> UpdateAsync(string id, SubjectMajorDto subject)
        {
            if (string.IsNullOrWhiteSpace(id) || subject == null) return false;
            var subjectChange = await _context.subject_Majors.FirstOrDefaultAsync(s => s.ID_subject == id);
            if (subjectChange == null) return false;

            if (!string.IsNullOrWhiteSpace(subject.Name_subject)) subjectChange.Name_subject = subject.Name_subject;
            if (subject.Number_of_credict != null) subjectChange.Number_of_credict = (int) subject.Number_of_credict;

            await _context.SaveChangesAsync();
            return true;
        }
    }
}
