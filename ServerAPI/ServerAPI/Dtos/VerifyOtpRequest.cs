﻿namespace ServerAPI.Dtos
{
    public class VerifyOtpRequest
    {
        public string Email { get; set; }
        public string OTP { get; set; }
    }
}
