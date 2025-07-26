namespace ServerAPI.Dtos
{
    public class CreateLectureDto
    {
        public string ID_teacher { get; set; }
        public string ID_subject { get; set; }
        public string ID_class {get; set;}
        public int Academic_year { get; set; }
    }
}
