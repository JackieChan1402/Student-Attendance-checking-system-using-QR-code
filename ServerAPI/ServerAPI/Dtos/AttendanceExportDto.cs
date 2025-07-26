namespace ServerAPI.Dtos
{
    public class AttendanceExportDto
    {
        public string subject_id { get; set; }
        public string class_id { get; set; }
        public int academic_year { get; set; }
        public List<StudentForAttendanceDto> students { get; set; }
    }
}
