using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Department
    {
        [Key]
        [StringLength(20)]
        public string ID_department { get; set; }

        [StringLength(30)]
        public string Name_department { get; set; }

        [StringLength(100)]
        public string Location { get; set; }
    }
}
