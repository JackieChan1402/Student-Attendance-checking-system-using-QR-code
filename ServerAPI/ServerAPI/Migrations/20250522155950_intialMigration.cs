using System;
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace ServerAPI.Migrations
{
    /// <inheritdoc />
    public partial class intialMigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Classes",
                columns: table => new
                {
                    ID_class = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    ID_major = table.Column<string>(type: "nvarchar(max)", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Classes", x => x.ID_class);
                });

            migrationBuilder.CreateTable(
                name: "Departments",
                columns: table => new
                {
                    ID_department = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    Name_department = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Location = table.Column<string>(type: "nvarchar(100)", maxLength: 100, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Departments", x => x.ID_department);
                });

            migrationBuilder.CreateTable(
                name: "Majors",
                columns: table => new
                {
                    ID_major = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Major_name = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Majors", x => x.ID_major);
                });

            migrationBuilder.CreateTable(
                name: "Role_People",
                columns: table => new
                {
                    ID_role = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Name_role = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Role_People", x => x.ID_role);
                });

            migrationBuilder.CreateTable(
                name: "Status_Attendances",
                columns: table => new
                {
                    ID_status = table.Column<int>(type: "int", nullable: false),
                    Name_status = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Status_Attendances", x => x.ID_status);
                });

            migrationBuilder.CreateTable(
                name: "subject_Majors",
                columns: table => new
                {
                    ID_subject = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    Name_subject = table.Column<string>(type: "nvarchar(255)", maxLength: 255, nullable: false),
                    Number_of_credict = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_subject_Majors", x => x.ID_subject);
                });

            migrationBuilder.CreateTable(
                name: "User_Universities",
                columns: table => new
                {
                    ID_User = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    User_name = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Password_user = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    Role_user = table.Column<int>(type: "int", nullable: false),
                    MustChangePassword = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_User_Universities", x => x.ID_User);
                    table.ForeignKey(
                        name: "FK_User_Universities_Role_People_Role_user",
                        column: x => x.Role_user,
                        principalTable: "Role_People",
                        principalColumn: "ID_role",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Student_Informations",
                columns: table => new
                {
                    ID_student = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    User_id = table.Column<int>(type: "int", nullable: false),
                    ID_major = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    UUID = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Contact = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student_Informations", x => x.ID_student);
                    table.ForeignKey(
                        name: "FK_Student_Informations_Majors_ID_major",
                        column: x => x.ID_major,
                        principalTable: "Majors",
                        principalColumn: "ID_major",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Student_Informations_User_Universities_User_id",
                        column: x => x.User_id,
                        principalTable: "User_Universities",
                        principalColumn: "ID_User",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Teacher_Informations",
                columns: table => new
                {
                    ID_teacher = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    User_id = table.Column<int>(type: "int", nullable: false),
                    Contact = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Department = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Teacher_Informations", x => x.ID_teacher);
                    table.ForeignKey(
                        name: "FK_Teacher_Informations_Departments_Department",
                        column: x => x.Department,
                        principalTable: "Departments",
                        principalColumn: "ID_department",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Teacher_Informations_User_Universities_User_id",
                        column: x => x.User_id,
                        principalTable: "User_Universities",
                        principalColumn: "ID_User",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Attendance_Sheets",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ID_student = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    ID_subject = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    ID_class = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Day_learn = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Academic_Year = table.Column<int>(type: "int", nullable: false),
                    ID_status = table.Column<int>(type: "int", nullable: false),
                    Note = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Attendance_Sheets", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Attendance_Sheets_Classes_ID_class",
                        column: x => x.ID_class,
                        principalTable: "Classes",
                        principalColumn: "ID_class",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Attendance_Sheets_Status_Attendances_ID_status",
                        column: x => x.ID_status,
                        principalTable: "Status_Attendances",
                        principalColumn: "ID_status",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Attendance_Sheets_Student_Informations_ID_student",
                        column: x => x.ID_student,
                        principalTable: "Student_Informations",
                        principalColumn: "ID_student",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Attendance_Sheets_subject_Majors_ID_subject",
                        column: x => x.ID_subject,
                        principalTable: "subject_Majors",
                        principalColumn: "ID_subject",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Student_change_logs",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ID_student = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    Field_changed = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: false),
                    Old_value = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    New_value = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Change_time = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Changed_by = table.Column<string>(type: "nvarchar(50)", maxLength: 50, nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student_change_logs", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Student_change_logs_Student_Informations_ID_student",
                        column: x => x.ID_student,
                        principalTable: "Student_Informations",
                        principalColumn: "ID_student",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "Student_Subject_Classes",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ID_student = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    ID_subject = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    ID_class = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Academic_year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Student_Subject_Classes", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Student_Subject_Classes_Classes_ID_class",
                        column: x => x.ID_class,
                        principalTable: "Classes",
                        principalColumn: "ID_class",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Student_Subject_Classes_Student_Informations_ID_student",
                        column: x => x.ID_student,
                        principalTable: "Student_Informations",
                        principalColumn: "ID_student",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Student_Subject_Classes_subject_Majors_ID_subject",
                        column: x => x.ID_subject,
                        principalTable: "subject_Majors",
                        principalColumn: "ID_subject",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Lecture_Information_By_Subjects",
                columns: table => new
                {
                    ID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    ID_teacher = table.Column<string>(type: "nvarchar(10)", maxLength: 10, nullable: false),
                    ID_subject = table.Column<string>(type: "nvarchar(20)", maxLength: 20, nullable: false),
                    ID_class = table.Column<string>(type: "nvarchar(30)", maxLength: 30, nullable: false),
                    Academic_Year = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Lecture_Information_By_Subjects", x => x.ID);
                    table.ForeignKey(
                        name: "FK_Lecture_Information_By_Subjects_Classes_ID_class",
                        column: x => x.ID_class,
                        principalTable: "Classes",
                        principalColumn: "ID_class",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Lecture_Information_By_Subjects_Teacher_Informations_ID_teacher",
                        column: x => x.ID_teacher,
                        principalTable: "Teacher_Informations",
                        principalColumn: "ID_teacher",
                        onDelete: ReferentialAction.Restrict);
                    table.ForeignKey(
                        name: "FK_Lecture_Information_By_Subjects_subject_Majors_ID_subject",
                        column: x => x.ID_subject,
                        principalTable: "subject_Majors",
                        principalColumn: "ID_subject",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Attendance_Sheets_ID_class",
                table: "Attendance_Sheets",
                column: "ID_class");

            migrationBuilder.CreateIndex(
                name: "IX_Attendance_Sheets_ID_status",
                table: "Attendance_Sheets",
                column: "ID_status");

            migrationBuilder.CreateIndex(
                name: "IX_Attendance_Sheets_ID_student",
                table: "Attendance_Sheets",
                column: "ID_student");

            migrationBuilder.CreateIndex(
                name: "IX_Attendance_Sheets_ID_subject",
                table: "Attendance_Sheets",
                column: "ID_subject");

            migrationBuilder.CreateIndex(
                name: "IX_Lecture_Information_By_Subjects_ID_class",
                table: "Lecture_Information_By_Subjects",
                column: "ID_class");

            migrationBuilder.CreateIndex(
                name: "IX_Lecture_Information_By_Subjects_ID_subject",
                table: "Lecture_Information_By_Subjects",
                column: "ID_subject");

            migrationBuilder.CreateIndex(
                name: "IX_Lecture_Information_By_Subjects_ID_teacher",
                table: "Lecture_Information_By_Subjects",
                column: "ID_teacher");

            migrationBuilder.CreateIndex(
                name: "IX_Student_change_logs_ID_student",
                table: "Student_change_logs",
                column: "ID_student");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Informations_ID_major",
                table: "Student_Informations",
                column: "ID_major");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Informations_User_id",
                table: "Student_Informations",
                column: "User_id");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Subject_Classes_ID_class",
                table: "Student_Subject_Classes",
                column: "ID_class");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Subject_Classes_ID_student",
                table: "Student_Subject_Classes",
                column: "ID_student");

            migrationBuilder.CreateIndex(
                name: "IX_Student_Subject_Classes_ID_subject",
                table: "Student_Subject_Classes",
                column: "ID_subject");

            migrationBuilder.CreateIndex(
                name: "IX_Teacher_Informations_Department",
                table: "Teacher_Informations",
                column: "Department");

            migrationBuilder.CreateIndex(
                name: "IX_Teacher_Informations_User_id",
                table: "Teacher_Informations",
                column: "User_id");

            migrationBuilder.CreateIndex(
                name: "IX_User_Universities_Role_user",
                table: "User_Universities",
                column: "Role_user");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Attendance_Sheets");

            migrationBuilder.DropTable(
                name: "Lecture_Information_By_Subjects");

            migrationBuilder.DropTable(
                name: "Student_change_logs");

            migrationBuilder.DropTable(
                name: "Student_Subject_Classes");

            migrationBuilder.DropTable(
                name: "Status_Attendances");

            migrationBuilder.DropTable(
                name: "Teacher_Informations");

            migrationBuilder.DropTable(
                name: "Classes");

            migrationBuilder.DropTable(
                name: "Student_Informations");

            migrationBuilder.DropTable(
                name: "subject_Majors");

            migrationBuilder.DropTable(
                name: "Departments");

            migrationBuilder.DropTable(
                name: "Majors");

            migrationBuilder.DropTable(
                name: "User_Universities");

            migrationBuilder.DropTable(
                name: "Role_People");
        }
    }
}
