using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace Mobile_App.Functions
{
    public static class DeviceFingerprintGenerator
    {
        public static async Task<string> GenerateFingerprintAsync()
        {
            string uuid = await UuidStorage.GetOrCreateUuidAsync();

            string model = DeviceInfo.Model;
            string manufacturer = DeviceInfo.Manufacturer;
            string platform = DeviceInfo.Platform.ToString();
            string Idiom  = DeviceInfo.Idiom.ToString();

            string rawData = $"{uuid}-{model}-{manufacturer}-{platform}-{Idiom}";
            
            using (SHA256 sha256 = SHA256.Create()) 
                {
                byte[] inputBytes = Encoding.UTF8.GetBytes(rawData);
                byte[] hashBytes = sha256.ComputeHash(inputBytes);

                StringBuilder sb = new StringBuilder();
                foreach (var b in hashBytes) sb.Append(b.ToString("x2"));
                return sb.ToString();
                }
        }
    }
}
