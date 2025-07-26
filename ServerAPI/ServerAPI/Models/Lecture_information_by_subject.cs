using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Lecture_information_by_subject
    {
        [Key]
        public int ID { get; set; }

        [StringLength(10)]
        public string ID_teacher { get; set; }

        [StringLength(20)]
        public string ID_subject { get; set; }

        [StringLength(30)]
        public string ID_class { get; set; }

        public int Academic_Year { get; set; }

        [ForeignKey("ID_teacher")]
        public Teacher_information Teacher { get; set; }

        [ForeignKey("ID_subject")]
        public Subject_major Subject { get; set; }

        [ForeignKey("ID_class")]
        public Class Class { get; set; }
    }
}
