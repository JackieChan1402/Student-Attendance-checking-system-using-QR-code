using System.Text.RegularExpressions;
using CommunityToolkit.Maui.Alerts;
using Mobile_App.Functions;
using Mobile_App.Models;

namespace Mobile_App.Main_Screen;

public partial class ForgotPasswordPage : ContentPage
{
	private readonly UserSivervice _service = new UserSivervice();
	public ForgotPasswordPage()
	{
		InitializeComponent();
	}
	private async void OnSendEmailButton(object sender, EventArgs e)
	{
		if (IsValidEmail(EmailEntry.Text.Trim()))
		{
            var result = await _service.ForgotPasswordAsync(EmailEntry.Text.Trim());
			if (!result)
			{
				await DisplayAlert("Error", "Can not send OTP to this email.", "OK");
				return;
			}
			OtpEntry.IsVisible = true;
			lblOTP.IsVisible = true;
			buttonOTP.IsVisible = true;
			buttonEmail.IsVisible = false;
			EmailEntry.IsReadOnly = true;
        }

	}
    private bool IsValidEmail(string email)
    {
        string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
        return Regex.IsMatch(email, pattern);
    }

	private async void OnSendOTPcodeButton(object sender, EventArgs e)
	{
		if (string.IsNullOrEmpty(OtpEntry.Text.Trim()))
		{
            await Toast.Make("Please cont make OTP empty", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
			return;
        }
		var result = await _service.VerifyOTPCodeAsync(EmailEntry.Text.Trim(), OtpEntry.Text.Trim());

		if (!result)
		{
            await DisplayAlert("Error", "Wrong OTP, please try again", "OK");
            return;
        }
		User_University user = await _service.GetInformationUserAsync(EmailEntry.Text.Trim());
		int UserId = user.iD_User;
		await Navigation.PushAsync(new ChangePasswordpage(UserId));
		Navigation.RemovePage(this);
	}
}