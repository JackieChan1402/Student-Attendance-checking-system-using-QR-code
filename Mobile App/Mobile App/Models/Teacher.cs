using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Mobile_App.Models
{
    public class Teacher
    {
        public string iD_teacher { get; set; }
        public int user_id { get; set; }
        public string contact { get; set; }
        public string department { get; set; }
        public User_University user_university { get; set; }
        public Department DapartmentInfo { get; set; }
    }
}
