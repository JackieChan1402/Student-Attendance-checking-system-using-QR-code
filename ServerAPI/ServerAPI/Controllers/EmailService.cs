using MailKit.Net.Smtp;
using MimeKit;

namespace ServerAPI.Controllers
{
    public class EmailService
    {
        private readonly string _formMail = "usthservice18@gmail.com";
        private readonly string _appPassword = "zokx rrfn pucg buct";

        public async Task SendOtpAsync(string toEmail, string otp)
        {
            var message = new MimeMessage();
            message.From.Add(new MailboxAddress("USTH app", _formMail));
            message.To.Add(new MailboxAddress("", toEmail));
            message.Subject = "OTP code to Valid";

            message.Body = new TextPart("plain")
            {
                Text = $"Your OTP is: {otp}. This code will expire in 5 minutes. "
            };

            using var client = new SmtpClient();
            await client.ConnectAsync("smtp.gmail.com", 587, MailKit.Security.SecureSocketOptions.StartTls);
            await client.AuthenticateAsync(_formMail, _appPassword);
            await client.SendAsync(message);
            await client.DisconnectAsync(true);
        }
    }
}
