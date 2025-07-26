using Microsoft.Maui.Controls;
using Microsoft.Maui.Layouts;
using Mobile_App.Dto;
using Mobile_App.Functions;
namespace Mobile_App.Main_Screen;

public partial class ListSubjectContent : ContentView
{
    private readonly SubjectClassInforService _service = new SubjectClassInforService();
	public ListSubjectContent()
	{
		InitializeComponent();
        var layout = new VerticalStackLayout
        {
            Padding = 10
        };
        var lbl = new Label
        {
            Text = " List Course",
            FontAttributes = FontAttributes.Bold,
            FontSize = 20,
            TextColor = Colors.DodgerBlue
        };
        layout.Children.Add(lbl);
        LoadData(layout);
    }
    private async void LoadData(VerticalStackLayout layout)
    {
        var studentId = Preferences.Get("student_id", "");
        var data = await _service.GetSubjectClassesAsync(studentId);
        foreach (var item in data)
        {
            var tag = CreateTagSubject(item.subjectId, item.classId, item.academicYear);
            MakeAbsoluteLayoutClickable(tag);
            layout.Children.Add(tag);
        }
        Content = layout;
    }
	public Frame CreateTagSubject(string subjectId, string classId, int academicYear)
	{
        var info = new SubjectClassInforDto
        {
            subjectId = subjectId,
            classId = classId,
            academicYear = academicYear
        };

        var label = new Label
        {
            Text = $"{subjectId} - {classId} - {academicYear.ToString()}",
            FontSize = 18,
            FontAttributes = FontAttributes.Bold,
            HorizontalTextAlignment = TextAlignment.Center,
            VerticalTextAlignment = TextAlignment.Center,
            TextColor = Colors.Black
        };
        var frame = new Frame
        {
            CornerRadius = 10,
            Padding = new Thickness(10, 5),
            Margin = new Thickness(0, 5),
            Content = label,
            BorderColor = Colors.LightGray,
            BackgroundColor = Colors.White,
            HasShadow = true,
            BindingContext = info
        };
        return frame;
    }
    public void MakeAbsoluteLayoutClickable(Frame tagClick)
    {
        var tap = new TapGestureRecognizer();
        tap.Tapped += async (s, e) => {
            // Do somthing when click this layout.
            if (tagClick.BindingContext is SubjectClassInforDto info)
            {
                await Navigation.PushAsync(new InformationTeacherPage(info.subjectId, info.classId, info.academicYear));
            }
            
        };
        tagClick.GestureRecognizers.Add(tap);
    }

}