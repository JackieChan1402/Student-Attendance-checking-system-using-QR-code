namespace ServerAPI.Dtos
{
    public class UserCreateRequest
    {
        public string User_name { get; set; }
        public string Email { get; set; }
        public string Password_user { get; set; }
        public string? Contact { get; set; }
        public int Role_user { get; set; }
        
        public string? ID_student { get; set; }
        public string? ID_major { get; set; }
       

        public string? ID_teacher { get; set; }
        public string? Department { get; set; }
    }
}
