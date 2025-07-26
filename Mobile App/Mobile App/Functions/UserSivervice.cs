using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Mobile_App.Dto;
using Mobile_App.Models;
using Newtonsoft.Json;



namespace Mobile_App.Functions
{
    public class UserSivervice
    {
        private readonly HttpClient _httpClient;
        private const string BASE_URL = "http://103.90.226.78:8081";

        public UserSivervice()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
            var token = Preferences.Get("access_token", "");
        }
        public async Task<bool> ForgotPasswordAsync(string email)
        {
            var request = new ForgotPasswordRequest { Email = email };
            string json = JsonConvert.SerializeObject(request);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _httpClient.PostAsync($"/api.User/send-otp", content);
            return response.IsSuccessStatusCode;
        }
        public async Task<bool> VerifyOTPCodeAsync(string email, string OTPcode)
        {
            var request = new VerifyOtpRequest
            {
                Email = email,
                OTP = OTPcode
            };
            string json = JsonConvert.SerializeObject(request);
            var content = new StringContent(json, Encoding.UTF8, "application/json");
            var response = await _httpClient.PostAsync($"/api.User/verify-otp", content);
            return response.IsSuccessStatusCode;
        }
        public async Task<User_University> GetInformationUserAsync(string email)
        {
            var response = await _httpClient.GetAsync($"/api.User/me/{email}");
            if (response.IsSuccessStatusCode)
            {
                string json = await response.Content.ReadAsStringAsync();
                var user = JsonConvert.DeserializeObject<User_University>(json);
                return user;
            }
            else
            {
                throw new Exception("Can not load Teacher Information.");
            }
        }
        public async Task<bool> ChangePassword(int UserID, string Password)
        {
            var response = await _httpClient.PostAsync($"/api.User/change-password/{UserID}?password={Password}", null);
            return response.IsSuccessStatusCode;
        }
    }
}
