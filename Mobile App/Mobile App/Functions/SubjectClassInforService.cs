using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mobile_App.Dto;
using Newtonsoft.Json;

namespace Mobile_App.Functions
{
   public class SubjectClassInforService
    {
        private readonly HttpClient _httpClient;
        private const string BASE_URL = "http://103.90.226.78:8081";

        public SubjectClassInforService()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
            _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);
        }
        public async Task<List<SubjectClassInforDto>> GetSubjectClassesAsync(string studentId)
        {
            var response = await _httpClient.GetAsync($"api.StudentToClass/Subject-Class-For-Student/{studentId}");

            if (response.IsSuccessStatusCode)
            {
                var json = await response.Content.ReadAsStringAsync();
                var result = JsonConvert.DeserializeObject<List<SubjectClassInforDto>>(json);
                return result;
            }
            return new List<SubjectClassInforDto>();
        }
    }
}
