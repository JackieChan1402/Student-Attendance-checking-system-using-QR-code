using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Subject_major
    {
        [Key]
        [StringLength(20)]
        public string ID_subject { get; set; }
        [StringLength(255)]
        public string Name_subject { get; set; }

        public int Number_of_credict { get; set; }
    }
}
