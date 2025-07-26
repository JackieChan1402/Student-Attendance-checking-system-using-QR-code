using Mobile_App.Functions;
using Mobile_App.Models;

namespace Mobile_App.Main_Screen;
	public partial class UserContentView : ContentView
	{
	private readonly InformationStudent _service = new InformationStudent();
	public UserContentView()
		{
			InitializeComponent();
		GetStudentInfor();
		//var student  = GetStudentInfor().Result;
		//userName.Text = student.user_university.user_name;
		//userId.Text = student.iD_student;
		//userMajor.Text = student.iD_major;
		//userContact.Text = student.contact;
		}
	private async void GetStudentInfor()
	{
		var student = await _service.GetStudentInforAsync();
		userName.Text = student.user_university.user_name;
		userMajor.Text = $"{student.iD_major}-{student.major.major_name}";
		userId.Text = student.iD_student;
		userContact.Text = student.contact;

		//return student;
	}
}
