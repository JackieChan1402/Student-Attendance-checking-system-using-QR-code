using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mobile_App.Models;
using Newtonsoft.Json;

namespace Mobile_App.Functions
{
    public class InformationStudent
    {
        private readonly HttpClient _httpClient;
        private const string BASE_URL = "http://103.90.226.78:8081";
        public InformationStudent()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
            if (string.IsNullOrWhiteSpace(token))
            {
                ShowInformation();
            }
            _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);
            
        }

        public async Task<Student> GetStudentInforAsync()
        {
            try
            {
                HttpResponseMessage response = await _httpClient.GetAsync("/api.StudentInfor/student-infor");
                if (response.IsSuccessStatusCode)
                {
                    string json = await response.Content.ReadAsStringAsync();
                    //await Application.Current.MainPage.DisplayAlert("Information", $"{json}", "OK");

                    var student = JsonConvert.DeserializeObject<Student>(json);
                    //await Application.Current.MainPage.DisplayAlert("Information", $"{student.iD_student}\n {student.user_university.user_name}", "OK");
                    return student;
                }
                else
                {
                    throw new Exception("Can not load Student Information.");
                }
            }
            catch (Exception ex)
            {
               await Application.Current.MainPage.DisplayAlert("Error", "Can not load Student Information", "OK");
                return null;
            }
            
        }
        public async void ShowInformation()
        {
           await Application.Current.MainPage.DisplayAlert("Error", "There are no token", "OK");
        }
        public async void ShowMessage()
        {
            await Application.Current.MainPage.DisplayAlert("Message", "Authenticate", "OK");
        }
    }
}
