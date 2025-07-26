using Microsoft.EntityFrameworkCore;
using ServerAPI.Models;

namespace ServerAPI.Data
{
    public class ServerDataContext: DbContext
    {
        public ServerDataContext(DbContextOptions options) : base(options) { }
        public DbSet<Role_person> Role_People { get; set; }
        public DbSet<Major> Majors { get; set; }
        public DbSet<Department> Departments { get; set; }
        public DbSet<Status_attendance> Status_Attendances { get; set; }
        public DbSet<Class> Classes { get; set; }
        public DbSet<Subject_major> subject_Majors { get; set; }
        public DbSet<User_university> user_Universities { get; set; }
        public DbSet<Student_information> student_Information { get; set; }
        public DbSet<Teacher_information> teacher_Information { get; set; }
        public DbSet<Student_Subject_Class> student_Subject_Classes { get; set; }
        public DbSet<Lecture_information_by_subject> lecture_Information_By_Subjects { get; set; }
        public DbSet<Attendance_sheet> attendance_Sheets { get; set; }
        public DbSet<StudentChangeLog> Student_change_logs { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            // Role_person
            modelBuilder.Entity<Role_person>()
                .ToTable("Role_People");

            // User_University
            modelBuilder.Entity<User_university>()
                .ToTable("User_Universities")
                .HasOne(u => u.Role_Person)
                .WithMany()
                .HasForeignKey(u => u.Role_user)
                .OnDelete(DeleteBehavior.Restrict);

            // Student_information
            modelBuilder.Entity<Student_information>()
                .ToTable("Student_Informations")
                .HasOne(s => s.User_university)
                .WithMany()
                .HasForeignKey(s => s.User_id)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Student_information>()
                .HasOne(s => s.Major)
                .WithMany()
                .HasForeignKey(s => s.ID_major)
                .OnDelete(DeleteBehavior.Restrict);

            // Teacher_information
            modelBuilder.Entity<Teacher_information>()
                .ToTable("Teacher_Informations")
                .HasOne(t => t.User_university)
                .WithMany()
                .HasForeignKey(t => t.User_id)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Teacher_information>()
                .HasOne(t => t.DepartmentInfo)
                .WithMany()
                .HasForeignKey(t => t.Department)
                .OnDelete(DeleteBehavior.Restrict);

            // Student_Subject_Class
            modelBuilder.Entity<Student_Subject_Class>()
                .ToTable("Student_Subject_Classes")
                .HasOne(s => s.student)
                .WithMany()
                .HasForeignKey(s => s.ID_student)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Student_Subject_Class>()
                .HasOne(s => s.subject)
                .WithMany()
                .HasForeignKey(s => s.ID_subject)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Student_Subject_Class>()
                .HasOne(s => s.Class)
                .WithMany()
                .HasForeignKey(s => s.ID_class)
                .OnDelete(DeleteBehavior.Restrict);

            // Lecture_information_by_subject
            modelBuilder.Entity<Lecture_information_by_subject>()
                .ToTable("Lecture_Information_By_Subjects")
                .HasOne(l => l.Teacher)
                .WithMany()
                .HasForeignKey(l => l.ID_teacher)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Lecture_information_by_subject>()
                .HasOne(l => l.Subject)
                .WithMany()
                .HasForeignKey(l => l.ID_subject)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Lecture_information_by_subject>()
                .HasOne(l => l.Class)
                .WithMany()
                .HasForeignKey(l => l.ID_class)
                .OnDelete(DeleteBehavior.Restrict);

            // Attendance_sheet
            modelBuilder.Entity<Attendance_sheet>()
                .ToTable("Attendance_Sheets")
                .HasOne(a => a.Student)
                .WithMany()
                .HasForeignKey(a => a.ID_student)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Attendance_sheet>()
                .HasOne(a => a.Subject)
                .WithMany()
                .HasForeignKey(a => a.ID_subject)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Attendance_sheet>()
                .HasOne(a => a.Class)
                .WithMany()
                .HasForeignKey(a => a.ID_class)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Attendance_sheet>()
                .HasOne(a => a.Status)
                .WithMany()
                .HasForeignKey(a => a.ID_status)
                .OnDelete(DeleteBehavior.Restrict);

            modelBuilder.Entity<Status_attendance>()
                 .Property(s => s.ID_status)
                 .ValueGeneratedNever();
          
        }
    }
}
