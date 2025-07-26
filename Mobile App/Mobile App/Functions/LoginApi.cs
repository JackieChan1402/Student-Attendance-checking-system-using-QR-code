using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http.Json;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Mobile_App.Dto;

namespace Mobile_App.Functions
{
    public class LoginApi
    {
        private const string BASE_URL = "http://103.90.226.78:8081";
        private readonly HttpClient _httpClient;
        
        public LoginApi()
        {
            _httpClient = new HttpClient
            {
                BaseAddress = new Uri(BASE_URL)
            };
        }
        public async Task<string> LoginAsync (string email, string password)
        {
            if (Connectivity.Current.NetworkAccess != NetworkAccess.Internet)
            {
                await Application.Current.MainPage.DisplayAlert("No Internet", "Please connect to Internet", "OK");
                return null;
            }
            try
            {
                var requestBody = new LoginDto
                {
                    email = email,
                    password = password
                };
                var respone = await _httpClient.PostAsJsonAsync("/api.Auth/login", requestBody);

                if (respone.IsSuccessStatusCode)
                {
                    var result = await respone.Content.ReadFromJsonAsync<LoginResponseDto>();
                    if (!string.IsNullOrEmpty(result?.Token))
                    {
                        Preferences.Set("access_token", result.Token);
                        return result.Token;
                    }
                    return null;
                    
                }
                else
                {
                    var errorMessage = await respone.Content.ReadAsStringAsync();
                    Console.WriteLine($"Login failed: {errorMessage}");
                    return null;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Login error: {ex.Message}");
                Console.WriteLine($"Stack Trace: {ex.StackTrace}");
                await Application.Current.MainPage.DisplayAlert("Error", $"Exception:{ex.Message}", "OK");
                return null;
            }
        }
        
    }
    
}

