namespace ServerAPI.Dtos
{
    public class TeacherWithSubjectDto
    {
        public string ID_teacher { get; set; }
        public string Name_teacher { get; set; }
        public string Email { get; set; }
        public string Contact { get; set; }

        public string ID_subject { get; set; }
        public string Subject_Name { get; set; }
    }
}
