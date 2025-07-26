using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Status_attendance
    {
        [Key]
        public int ID_status { get; set; }

        [StringLength(10)]
        public string Name_status { get; set; }

    }
}
