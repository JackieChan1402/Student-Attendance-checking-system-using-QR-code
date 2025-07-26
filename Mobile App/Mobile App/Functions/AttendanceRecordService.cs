using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mobile_App.Dto;
using Newtonsoft.Json;

namespace Mobile_App.Functions
{
    public class AttendanceRecordService
    {
        private readonly HttpClient _httpClient;
        private const string BASE_URL = "http://103.90.226.78:8081";

        public AttendanceRecordService()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
            _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

        }
        public async Task<List<AttendanceRecord>> GetAttendanceRecord(string studentId, string subjectID, string classID, int academicYear)
        {
            var url = $"/api.Attendance/student" +
               $"?studentId={studentId}&classId={classID}&subjectId={subjectID}&academicYear={academicYear}";
            var response = await _httpClient.GetAsync(url);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var result = JsonConvert.DeserializeObject<List<AttendanceRecord>>(json);
                return result;
            }
            else
            {
                throw new Exception("Failed to fetch Attendance information");
            }
        }
    }
}
