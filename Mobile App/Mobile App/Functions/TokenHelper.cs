using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

namespace Mobile_App.Functions
{
    public class TokenHelper
    {
        public static string GetRoleFromToken(string token)
        {
            var parts = token.Split('.');
            if (parts.Length != 3)
                throw new ArgumentException("Invalid JWT token format.");

            var payload = parts[1];
            var base64 = PadBase64(Base64UrlToBase64(payload));
            var jsonPayload = Encoding.UTF8.GetString(Convert.FromBase64String(base64));

            var claims = JsonSerializer.Deserialize<Dictionary<string, object>>(jsonPayload);


            const string roleKey = "http://schemas.microsoft.com/ws/2008/06/identity/claims/role";
            return claims != null && claims.ContainsKey(roleKey) ? claims[roleKey].ToString() : null;
        }

        private static string PadBase64(string base64)
        {
            switch (base64.Length % 4)
            {
                case 2: return base64 + "==";
                case 3: return base64 + "=";
                case 1: return base64 + "===";
                default: return base64;
            }
        }

        // Chuyển Base64Url -> Base64
        private static string Base64UrlToBase64(string input)
        {
            return input.Replace('-', '+').Replace('_', '/');
        }

    }
}
