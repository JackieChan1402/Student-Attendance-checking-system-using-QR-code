using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Threading.Tasks;
using CommunityToolkit.Maui.Alerts;
using Mobile_App.Dto;

namespace Mobile_App.Functions
{
    public class StudentUpdateInforService
    {
        private readonly HttpClient _httpClient;
        private const string BASE_URL = "http://103.90.226.78:8081";
        public StudentUpdateInforService()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
            _httpClient.DefaultRequestHeaders.Authorization = new System.Net.Http.Headers.AuthenticationHeaderValue("Bearer", token);

        }
        public async Task UpdateStudentInforAsync(string studentId, string contact)
        {
            var url = $"{BASE_URL}/api.StudentInfor/{studentId}";
            var studentinfor = new StudentUpdateInforDto
            {
                Contact = contact
            };
            var json = Newtonsoft.Json.JsonConvert.SerializeObject(studentinfor);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var request = new HttpRequestMessage(new HttpMethod("PATCH"), url)
            {
                Content = content
            };
            var response = await _httpClient.SendAsync(request);
            if (response.IsSuccessStatusCode)
            {
                Application.Current.MainPage.DisplayAlert("Notification", "Update Student information Successfully.", "OK");
            }
            else
            {
              await  Application.Current.MainPage.DisplayAlert("Error", "Update Student information Faild.", "OK");
            }
        }

        public async Task UpdateStudentUuidAsync(string studentID, string uuid)
        {
            var url = $"{BASE_URL}/api.StudentInfor/{studentID}";
            var studentinfor = new StudentUpdateInforDto
            {
                UUID = uuid
            };

            var json = Newtonsoft.Json.JsonConvert.SerializeObject(studentinfor);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _httpClient.PostAsJsonAsync(url, content);
            if (response.IsSuccessStatusCode)
            {
                //Application.Current.MainPage.DisplayAlert("Notification", "Update Student information Successfully.", "OK");
                await Toast.Make("Update UUID Successfully!", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
            }
            else
            {
               await Application.Current.MainPage.DisplayAlert("Error", $"{response.RequestMessage}.", "OK");
            }
        }
        public async Task ChangeUUIDAsync(string studentID, string uuid)
        {
            var url = $"{BASE_URL}/api.StudentInfor/{studentID}";
            var studentChangeLog = new StudentChangeUUIDLog
            {
                UUID = uuid
            };
            var response = await _httpClient.PostAsJsonAsync(url, studentChangeLog);
            if (response.IsSuccessStatusCode)
            {
                await Toast.Make("Send Change Log UUID Successfully!", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
            }
            else
            {
                await Application.Current.MainPage.DisplayAlert("Error", "Send Change Log UUID fail", "OK");
            }
        }
    }
}
