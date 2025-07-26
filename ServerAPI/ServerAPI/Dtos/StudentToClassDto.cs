namespace ServerAPI.Dtos
{
    public class StudentToClassDto
    {
        public List<string> ID_students { get; set; }
        public string ID_subject { get; set; }
        public string ID_class { get; set; }
        public int Academic_Year { get; set; }
    }
}
