using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace Mobile_App.Models
{
    public class Student
    {
        public string iD_student { get; set; }
        public int user_id { get; set; }
        public string iD_major { get; set; }
        public string uuid { get; set; }
        public string contact { get; set; }

        public User_University user_university { get; set; }
        public Major major { get; set; }
    }
}
