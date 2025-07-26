using Microsoft.AspNetCore.Http.HttpResults;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class ClassService : IClassService
    {
        private readonly ServerDataContext _context;
        public ClassService(ServerDataContext context)
        {
            _context = context;
        }

        public async Task<Class> CreateClassAsync(Class classroom)
        {
            var existing = await _context.Classes.FindAsync(classroom.ID_class);
            if (existing != null)
            {
                throw new Exception("Class with the same ID already exists.");

            }
            var majors = await _context.Majors
                 .Where(m => classroom.ID_major.Contains(m.ID_major))
                 .ToListAsync();
            if (majors.Count != classroom.ID_major.Count)
                throw new Exception("One or more majors not found.");

            var classEntity = new Class
            {
               ID_class = classroom.ID_class
            };
            foreach (var major in classroom.ID_major)
            {
                classEntity.ID_major.Add(major);
            }

           
            _context.Classes.Add(classEntity);
            await _context.SaveChangesAsync();
            return classEntity;
        }

        public async Task<bool> DeleteAsync(string id)
        {
            var classEntity = await GetByIdAsync(id);
            if (classEntity == null)
                return false;
            _context.Classes.Remove(classEntity);
            await _context.SaveChangesAsync();
            return true;
        }

        public async Task<List<Class>> GetAllAsync()
        { 
            return await _context.Classes.ToListAsync();
        }

        public async Task<Class> GetByIdAsync(string id)
        {
            return await _context.Classes.FindAsync(id);
        }

        public async Task<bool> UpdateAsync(string id, [FromBody] Class classroom)
        {
            var classChange = await GetByIdAsync(id);
            if (classChange == null) return false;


            classChange.ID_major.Clear();

            foreach (var majorID in classroom.ID_major)
            {
                var majorExists = await _context.Majors.AnyAsync(m => m.ID_major == majorID);
                if (!majorExists)
                {
                    return false;
                }
                classChange.ID_major.Add(majorID);
            }
            await _context.SaveChangesAsync();
            return true;
        }
    }
}
