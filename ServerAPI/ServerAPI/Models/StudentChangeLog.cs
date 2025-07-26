using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ServerAPI.Models
{
    public class StudentChangeLog
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(10)]
        public string ID_student { get; set; }

        [Required]
        [StringLength(50)]
        public string Field_changed { get; set; }

        public string? Old_value { get; set; }
        public string? New_value { get; set;}
        public DateTime Change_time { get; set; } = DateTime.Now;

        [StringLength(50)]
        public string? Changed_by { get; set; }

        [ForeignKey("ID_student")]
        public Student_information Student {  get; set; }
    }
}
