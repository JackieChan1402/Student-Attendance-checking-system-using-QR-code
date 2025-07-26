namespace ServerAPI.Dtos
{
    public class AttendancePivotDto
    {
        public string StudentID { get; set; }
        public string Name { get; set; }
        public string Email { get; set; }
        public Dictionary<string, string> AttendanceByDateTime { get; set; } = new();
    }
}
