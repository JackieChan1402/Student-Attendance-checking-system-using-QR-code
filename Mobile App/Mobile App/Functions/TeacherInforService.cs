using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mobile_App.Dto;
using Newtonsoft.Json;

namespace Mobile_App.Functions
{
   public class TeacherInforService
    {
        private const string BASE_URL = "http://103.90.226.78:8081";
        private readonly HttpClient _httpClient;

        public TeacherInforService()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
            _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);         
        }
        public async Task<TeacherInforDto> GetTeacherInforAsync(string subjectId, string classId, int academicYear)
        {
            var url = $"/api.Lecture/Teacher-information-by-subject-class" +
                $"?subjectId={subjectId}&classId={classId}&academicYear={academicYear}";
            var response = await _httpClient.GetAsync(url);

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var result =  JsonConvert.DeserializeObject<TeacherInforDto>(json);
                return result;
            }
            else
            {
                throw new Exception("Failed to fetch teahcer information");
            }
        }
    }
}
