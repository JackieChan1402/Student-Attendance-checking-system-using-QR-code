using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ServerAPI.Models
{
    public class Teacher_information
    {
        [Key]
        [StringLength(10)]
        public string ID_teacher { get; set; }

        public int User_id { get; set; }
        [StringLength(30)]
        public string Contact { get; set; }
        [StringLength(20)]
        public string Department { get; set; }

        [ForeignKey("User_id")]
        public User_university User_university { get; set; }

        [ForeignKey("Department")]
        public Department DepartmentInfo { get; set; }
    }
}
