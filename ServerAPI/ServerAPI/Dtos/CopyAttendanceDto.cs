namespace ServerAPI.Dtos
{
    public class CopyAttendanceDto
    {
        public string subject_id { get; set; }
        public string class_id { get; set; }
        public int academic_year { get; set; }
        public List<CopyStudentDto> students { get; set; }
    }
}
