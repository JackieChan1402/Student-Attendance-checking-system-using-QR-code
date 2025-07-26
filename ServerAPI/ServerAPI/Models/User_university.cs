using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace ServerAPI.Models
{
    public class User_university
    {
        [Key]
        public int ID_User { get; set; }

        public string User_name { get; set; }

        public string Password_user { get; set; }

        public string Email { get; set; }

        public int Role_user { get; set; }
        public bool MustChangePassword { get; set; }

        [ForeignKey("Role_user")]
        public Role_person Role_Person { get; set; }
    }
}
