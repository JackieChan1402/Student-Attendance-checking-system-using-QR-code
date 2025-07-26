using CommunityToolkit.Maui.Alerts;
using Mobile_App.Functions;

namespace Mobile_App.Main_Screen;

public partial class ChangePasswordpage : ContentPage
{
	private static int _userID;
	private readonly UserSivervice _service = new UserSivervice();
	public ChangePasswordpage(int userID)
	{
		InitializeComponent();
		_userID = userID;
	}
	private async void OnChangePasswordButton(object sender, EventArgs e)
	{
		if (ConfirmPasswordEntry.Text.Trim() != NewPasswordEntry.Text.Trim())
		{
			await DisplayAlert("Error", "Confirm Password not correct with new password, Please try again", "OK");
			return;
        }
        var result = await _service.ChangePassword(_userID, ConfirmPasswordEntry.Text.Trim());

		if (!result)
		{
			await DisplayAlert("Error", "Fail to change password. ", "OK");
		}
		ButtonSend.IsVisible = false;
		ConfirmPasswordEntry.IsReadOnly = true;
		NewPasswordEntry.IsReadOnly = true;
        await Toast.Make("Your password changed successfully.", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
    }
}