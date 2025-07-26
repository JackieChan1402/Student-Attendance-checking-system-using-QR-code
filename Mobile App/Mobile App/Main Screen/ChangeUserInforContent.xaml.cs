using CommunityToolkit.Maui;
using CommunityToolkit.Maui.Alerts;
using Mobile_App.Functions;

namespace Mobile_App.Main_Screen;

public partial class ChangeUserInforContent : ContentView
{
	private readonly StudentUpdateInforService _service = new StudentUpdateInforService();
	public ChangeUserInforContent()
	{
		InitializeComponent();
	}
	private async void ClickedChangeContact(object sender, EventArgs e)
	{
		//await Toast.Make("Change Contact Successfully!", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
		var studentId = Preferences.Get("student_id", "");
		await _service.UpdateStudentInforAsync(studentId, EntryContact.Text);

    }
	private async void ClickedChangeUUID(object sender, EventArgs e) 
		{
		//await Navigation.PushAsync(new ShowSystemInfor());
		var studentId = Preferences.Get("student_id", "");
		string uuidCode = await DeviceFingerprintGenerator.GenerateFingerprintAsync();
		await _service.ChangeUUIDAsync(studentId, uuidCode);
    }
}