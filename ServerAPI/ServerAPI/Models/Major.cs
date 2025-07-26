using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Major
    {
        [Key]
        [StringLength(30)]
        public string ID_major { get; set; }

        [StringLength(30)]
        public string Major_name { get; set; }

       
    }
}
