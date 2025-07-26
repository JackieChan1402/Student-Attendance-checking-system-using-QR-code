namespace ServerAPI.Dtos
{
    public class StudentAttendanceDto
    {
        public string Student_ID { get; set; }
        public string Student_Name { get; set; }
        public List<AttendanceRecordDto> AttendanceRecords { get; set; }
    }
}
