using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ServerAPI.Models
{
    public class Student_Subject_Class
    {
        [Key]
        public int ID { get; set; }
        [StringLength(10)]
        public string ID_student { get; set; }

        [StringLength(20)]
        public string ID_subject { get; set; }

        [StringLength(30)] 
        public string ID_class { get; set; }

        public int Academic_year { get; set; }

        [ForeignKey("ID_student")]
        public Student_information student { get; set; }

        [ForeignKey("ID_subject")]
        public Subject_major subject { get; set; }
        [ForeignKey("ID_class")]
        public Class Class { get; set; }

    }
}
