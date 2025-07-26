
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;

namespace ServerAPI.Services
{
    public class AutoApproveChangeLogService : BackgroundService
    {
        private readonly IServiceScopeFactory _servicesScopeFactory;
        private readonly TimeSpan _interval = TimeSpan.FromMinutes(45);
        

        public AutoApproveChangeLogService(IServiceScopeFactory servicesScopeFactory)
        {
            _servicesScopeFactory = servicesScopeFactory;
        }
        protected override async Task ExecuteAsync(CancellationToken stoppingToken)
        {
            while (!stoppingToken.IsCancellationRequested)
            {
                using (var scope = _servicesScopeFactory.CreateScope())
                {
                    var context = scope.ServiceProvider.GetRequiredService<ServerDataContext>();

                    //var allRecords = await context.attendance_Sheets.ToListAsync();
                    //context.attendance_Sheets.RemoveRange(allRecords);

                    var thresholdTime = DateTime.Now.AddHours(-24);
                    var expiredLogs = await context.Student_change_logs
                        .Where(log => string.IsNullOrEmpty(log.Changed_by) && log.Change_time <= thresholdTime)
                        .ToListAsync();

                    foreach (var log in expiredLogs)
                    {
                        var student = await context.student_Information.FindAsync(log.ID_student);
                        if (student == null) continue;
                        student.UUID = log.New_value;
                        log.Changed_by = "Auto System";
                        log.Change_time = DateTime.Now;
                    }
                    await context.SaveChangesAsync();
                }
                await Task.Delay(_interval, stoppingToken);
            }
        }
       

    }
}
