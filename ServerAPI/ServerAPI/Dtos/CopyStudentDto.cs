namespace ServerAPI.Dtos
{
    public class CopyStudentDto
    {
        public string student_id { get; set; }
        public string student_name { get; set; }
        public string uuid { get; set; }

        public int Status { get; set; }
        public DateTime dateTime { get; set; }
        public string Note { get; set; }
    }
}
