using ServerAPI.Models;

namespace ServerAPI.Dtos
{
    public class ClassDto
    {
        public string ID_class { get; set; }
        public List<Major> Majors { get; set; }
    }
}
