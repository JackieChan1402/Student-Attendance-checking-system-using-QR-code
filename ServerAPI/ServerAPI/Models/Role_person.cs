using System.ComponentModel.DataAnnotations;

namespace ServerAPI.Models
{
    public class Role_person
    {
        [Key]
        public int ID_role { get; set; }
        [StringLength(10)]
        public string Name_role { get; set; }
    }
}
