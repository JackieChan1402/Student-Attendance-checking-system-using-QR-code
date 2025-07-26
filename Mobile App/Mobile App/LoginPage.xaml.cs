using System.Security.Cryptography;
using System.Text.RegularExpressions;
using Mobile_App.Functions;
using Mobile_App.Main_Screen;
using Mobile_App.Models;

namespace Mobile_App;

public partial class LoginPage : ContentPage
{
	private readonly LoginApi _serviceLogin = new LoginApi();
	//private static readonly InformationStudent _serviceStudent = new InformationStudent();
	public static string studentId { get; set; }
	public LoginPage()
	{
		InitializeComponent();
		var savedEmail = Preferences.Get("saved_email",string.Empty);

		if (!string.IsNullOrWhiteSpace(savedEmail))
		{
			EmailEntry.Text = savedEmail;
			RememberMeCheckBox.IsChecked = true;
		}
	}
    private bool IsValidEmail(string email)
    {
        string pattern = @"^[^@\s]+@[^@\s]+\.[^@\s]+$";
        return Regex.IsMatch(email, pattern);
    }
    private async void OnLoginClicked (object sender, EventArgs e)
	{
		string email = EmailEntry.Text;
		string password  = PasswordEntry.Text;

		if (!string.IsNullOrWhiteSpace(email) && !string.IsNullOrWhiteSpace(password)) {
			if (IsValidEmail(email))
			{
                var token = await _serviceLogin.LoginAsync(email, password);

                var UserRole = TokenHelper.GetRoleFromToken(token);
                if (!string.IsNullOrEmpty(UserRole) && UserRole == "Student")
                {
                    if (RememberMeCheckBox.IsChecked)
                    {
                        Preferences.Set("saved_email", email);
                    }
                    else
                    {
                        Preferences.Remove("saved_email");
                    }
                    await Shell.Current.GoToAsync("//MainPage");
                }
                else
                {
                    await DisplayAlert("Error", "No role found in token", "OK");
                }
            }
            else await DisplayAlert("Error", "Please entry the email format", "OK");

        }
		else {
			await DisplayAlert("Error", "Please input email and password", "Ok");
		}
		
	}
    protected override async void OnAppearing()
    {
        base.OnAppearing();
        var cameraPermissionStatus = await Permissions.CheckStatusAsync<Permissions.Camera>();
        if (cameraPermissionStatus != PermissionStatus.Granted)
        {
            var status = await Permissions.RequestAsync<Permissions.Camera>();
            if (status != PermissionStatus.Granted)
            {
                await DisplayAlert("Permission Denied", "Camera permission is required to proceed.", "OK");
                return;
            }
        }
    }
	private async void OnCameraCicked(object sender, EventArgs e)
	{
		await Navigation.PushAsync(new CameraPage());
	}
    private async void OnForgotPasswordTapped(object sender, EventArgs e)
    {
        await Navigation.PushAsync(new ForgotPasswordPage());
    }
}