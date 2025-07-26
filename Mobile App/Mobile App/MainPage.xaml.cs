using System.Runtime.Versioning;
using System.Xml.Serialization;
using CommunityToolkit.Maui.Alerts;
using Mobile_App.Functions;
using Mobile_App.Main_Screen;
namespace Mobile_App
{
    public partial class MainPage : ContentPage
    {
        private ImageButton _activeButton;
        private readonly StudentUpdateInforService _studentUpdateInforService = new StudentUpdateInforService();
        private readonly InformationStudent _serviceStudent = new InformationStudent();

        public MainPage()
        {
            InitializeComponent();

            ShowWelCome();
        }
        async void ShowWelCome()
        {
            var currentTheme = Application.Current.RequestedTheme;
            var data = await _serviceStudent.GetStudentInforAsync();
            if (string.IsNullOrEmpty(data.uuid))
            {
                PushUuidToServer();
            }
            else
            {
                CheckUuidInServerAndDevice(data.uuid);
            }
            if (data.user_university.mustChangePassword)
            {
                await Navigation.PushAsync(new ChangePasswordpage(data.user_id));
            }
            Preferences.Set("student_id", data.iD_student);
            Color textColor = currentTheme == AppTheme.Dark ? Colors.White : Colors.Black;
            RightContent.Content = new Label
            {
                Text = $"Hello {data.user_university.user_name}, Did you check attendance yet?",
                FontSize = 18,
                TextColor = textColor
            };

        }
        private void OnstudentClicked(object sender, EventArgs e)
        {
            if (Application.Current.RequestedTheme == AppTheme.Dark)
            {
                FrameUser.BackgroundColor = Color.FromArgb("#1C5C9E"); 
            }
            else
            {
                FrameUser.BackgroundColor = Colors.White; 
            }
            FrameBook.BackgroundColor = Colors.Transparent;
            FrameConstruction.BackgroundColor = Colors.Transparent;

            RightContent.Content = new UserContentView();
        }
        private void OnBookClicked(object sender, EventArgs e)
        {
            FrameUser.BackgroundColor = Colors.Transparent;
           
            if (Application.Current.RequestedTheme == AppTheme.Dark)
            {
                FrameBook.BackgroundColor = Color.FromArgb("#1C5C9E");
            }
            else
            {
                FrameBook.BackgroundColor = Colors.White;
            }
            FrameConstruction.BackgroundColor = Colors.Transparent;

            RightContent.Content = new ListSubjectContent();
        }

        private void OnContruction(object sender, EventArgs e)
        {
            FrameUser.BackgroundColor = Colors.Transparent;
            FrameBook.BackgroundColor = Colors.Transparent;
           
            if (Application.Current.RequestedTheme == AppTheme.Dark)
            {
                FrameConstruction.BackgroundColor = Color.FromArgb("#1C5C9E");
            }
            else
            {
                FrameConstruction.BackgroundColor = Colors.White;
            }

            RightContent.Content = new ChangeUserInforContent();
        }
        private async void PushUuidToServer()
        {
            var studentId = Preferences.Get("student_id", "");
            var uuidPass = await DeviceFingerprintGenerator.GenerateFingerprintAsync();
            await _studentUpdateInforService.UpdateStudentUuidAsync(studentId, uuidPass);
        }
        private async void CheckUuidInServerAndDevice(string dataServer)
        {
            var uuidPass = await DeviceFingerprintGenerator.GenerateFingerprintAsync();
            if (uuidPass == dataServer)
            {
                //DisplayAlert("Notification", "Your UUID data have alreary in server and your device are the same.", "OK");
                await Toast.Make("Your UUID data have alreary in server and your device are the same.", CommunityToolkit.Maui.Core.ToastDuration.Short).Show();
                return;
            }
            else
            {
                DisplayAlert("Warning!", "Have you  change device or reinstall app? Please update your UUID.\n" +
                    "If you not update, you can not check attendance", "OK");
            }
        }
        private async void OnCameraClick(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new CameraPage());
        }
    }

}
