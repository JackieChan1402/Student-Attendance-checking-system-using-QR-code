using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Mobile_App.Models
{
    public class User_University
    {
        public int iD_User { get; set; }

        public string user_name { get; set; }

        public string password_user { get; set; }

        public string email { get; set; }
        public int role_user { get; set; }
        public bool mustChangePassword { get; set; }
        public Role role_Person { get; set; }
    }
}
