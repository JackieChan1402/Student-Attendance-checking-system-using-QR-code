using System.Collections.ObjectModel;
using Mobile_App.Functions;
using Mobile_App.Dto;

namespace Mobile_App.Main_Screen;

public partial class InformationTeacherPage : ContentPage
{
    private readonly string _subjectId;
    private readonly string _classId;
    private readonly int _academicYear;
    private readonly TeacherInforService _serviceTeacher = new TeacherInforService();

    private readonly AttendanceRecordService _serviceAttendance = new AttendanceRecordService();
    public ObservableCollection<AttendanceRecord> AttendanceList { get; set; }
    public InformationTeacherPage(string subjecID, string classID, int AademicYear)
    {
        InitializeComponent();
        _subjectId = subjecID;
        _classId = classID;
        _academicYear = AademicYear;

        subjectId.Text = _subjectId;
        classid.Text = _classId;
        academicYear.Text = _academicYear.ToString();
        LoadTeacherInfor();
        AttendanceList = new ObservableCollection<AttendanceRecord>();
        LoadAttendanceRecord();
        BindingContext = this;

    }
    public async void LoadTeacherInfor()
    {
        try
        {
            var teacher = await _serviceTeacher.GetTeacherInforAsync(_subjectId, _classId, _academicYear);
            teacherDepartment.Text = teacher.department;
            teacherEmail.Text = teacher.email;
            teacherName.Text = teacher.teacherName;
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }
    private async void LoadAttendanceRecord()
    {
        
        var studentID = Preferences.Get("student_id", "");
        try
        {
            var data = await _serviceAttendance.GetAttendanceRecord(studentID, _subjectId, _classId, _academicYear);
            AttendanceList.Clear();
            if (data.Count == 0) DisplayAlert("Information", "There are no attendance record.", "OK");
            foreach (var item in data)
            {
                AttendanceList.Add(new AttendanceRecord
                {
                    dateAttendance = item.dateAttendance,
                    Status = item.Status,
                    Note = item.Note,
                });
            }
           
        }
        catch (Exception ex)
        {
            await DisplayAlert("Error", ex.Message, "OK");
        }
    }
}