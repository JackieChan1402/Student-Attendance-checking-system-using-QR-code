using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using Microsoft.EntityFrameworkCore;

namespace ServerAPI.Models
{
    public class Student_information
    {
        [Key]
        [StringLength(10)]
        public string ID_student { get; set; }

        
        public int User_id { get; set; }

        [StringLength(30)]
        public string ID_major { get; set; }
        
        public string? UUID { get; set; }
        [StringLength(30)]
        public string Contact { get; set; }

        [ForeignKey("User_id")]
        public User_university User_university { get; set; }

        [ForeignKey("ID_major")]
        public Major Major { get; set; }

    }
}
