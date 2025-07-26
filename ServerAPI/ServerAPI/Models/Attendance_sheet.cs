using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Attendance_sheet
    {
        [Key]
        public int ID { get; set; }

        [StringLength(10)]
        public string ID_student { get; set; }

        [StringLength(20)]
        public string ID_subject { get; set; }

        [StringLength(30)]
        public string ID_class { get; set; }

        public DateTime Day_learn { get; set; }
        public int Academic_Year { get; set; }
        public int ID_status { get; set; }

        [StringLength(50)]
        public string? Note { get; set; }

        [ForeignKey("ID_student")]
        public Student_information Student { get; set; }

        [ForeignKey("ID_subject")]
        public Subject_major Subject { get; set; }

        [ForeignKey("ID_class")]
        public Class Class { get; set; }

        [ForeignKey("ID_status")]
        public Status_attendance Status { get; set; }
    }
}
