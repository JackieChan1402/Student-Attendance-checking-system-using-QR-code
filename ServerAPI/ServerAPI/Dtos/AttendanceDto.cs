using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Dtos
{
    public class AttendanceDto
    {
        public string ID_student { get; set; }

        public string ID_subject { get; set; }

        public string ID_class { get; set; }

        public DateTime Day_learn { get; set; }
        public int Academic_Year { get; set; }
        public int ID_status { get; set; }

        public string? Note { get; set; }
    }
}
