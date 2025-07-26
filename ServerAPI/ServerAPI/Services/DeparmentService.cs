using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Dtos;
using ServerAPI.Models;

namespace ServerAPI.Services
{
    public class DeparmentService :IDepartmentService
    {
        private readonly ServerDataContext _context;

        public DeparmentService (ServerDataContext context)
        {
            _context = context;
        }

        public async Task<List<Department>> GetAllAsync()
        {
            return await _context.Departments.ToListAsync();
        }
        public async Task<Department?> GetByIdAsync(string id)
        {
            return await _context.Departments.FindAsync(id);
        }
        public async Task<Department> CreateDepartmentAsync(Department department)
        {
            _context.Departments.Add(department);
            await _context.SaveChangesAsync();
            return department;
        }
        
        public async Task DeleteAsync (string id)
        {
            var department = await GetByIdAsync(id);
            if (department != null)
            {
                _context.Departments.Remove(department);
                await _context.SaveChangesAsync();
            }
        }

        public async Task<bool> UpdateAsync(string id, DepartmentDto department)
        {
            var departmentChange = await GetByIdAsync(id);
            if (departmentChange == null) return false;

            if (!string.IsNullOrWhiteSpace(department.Name_department)) departmentChange.Name_department = department.Name_department;
            if (!string.IsNullOrWhiteSpace(department.Location)) departmentChange.Location = department.Location;

            await _context.SaveChangesAsync();
            return true;
        }
    }
}
