using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class MajorService : IMajorService
    {
        private readonly ServerDataContext _context;

        public MajorService (ServerDataContext context)
        {
            _context = context;
        }

        public async Task<Major> CreateMajorAsync(Major major)
        {
            _context.Majors.Add(major);
            await _context.SaveChangesAsync();
            return major;
        }

        public async Task DeleteAsync(string id)
        {
            var major = await GetByIdAsync(id);
            if (major != null)
            {
                _context.Majors.Remove(major);
                await _context.SaveChangesAsync();
            }
        }

        public async Task<List<Major>> GetAllAsync()
        {
            return await _context.Majors.ToListAsync();
        }

        public async Task<Major?> GetByIdAsync(string id)
        {
            return await _context.Majors.FindAsync(id);
        }

        public async Task<bool> UpdateAsync(string id, [FromBody] Major major)
        {
            var existingMajor = await _context.Majors.FindAsync(id);
            if (existingMajor == null)
            {
                return false;
            }
            existingMajor.Major_name = major.Major_name;
            await _context.SaveChangesAsync();
            return true;
        }
    }
}
