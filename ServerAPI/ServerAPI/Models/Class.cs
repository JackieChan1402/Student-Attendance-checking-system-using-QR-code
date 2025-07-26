using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ServerAPI.Models
{
    public class Class
    {
        [Key]
        [StringLength(30)]
        public string ID_class { get; set; }
        public List<string> ID_major { get; set; } = new List<string>();
    }
   
}
