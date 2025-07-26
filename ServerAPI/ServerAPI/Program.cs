
using BCrypt.Net;
using Microsoft.EntityFrameworkCore;
using ServerAPI.Data;
using ServerAPI.Models;
using ServerAPI.Services;
using System.Text;
using Microsoft.AspNetCore.Authentication.JwtBearer;
using Microsoft.IdentityModel.Tokens;
using ServerAPI.Controllers;
namespace ServerAPI
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var builder = WebApplication.CreateBuilder(args);

            builder.WebHost.ConfigureKestrel(serverOptions =>
            {
                serverOptions.ListenAnyIP(8081);
            });
            // Add services to the container.
           

            // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
            builder.Services.AddEndpointsApiExplorer();
            builder.Services.AddSwaggerGen();
            builder.Services.AddDbContext<ServerDataContext>(options => options.UseSqlServer(builder.Configuration.GetConnectionString("DefaultConnection")));
            builder.Services.AddControllers();
            builder.Services.AddScoped<IUserService, UserService>();
            builder.Services.AddScoped<IStudentInformationService, StudentInforService>();
            builder.Services.AddScoped<ITeacherInformationService, TeacherInfoService>();
            builder.Services.AddScoped<IClassService, ClassService>();
            builder.Services.AddScoped<IDepartmentService, DeparmentService>();
            builder.Services.AddScoped<IMajorService, MajorService>();
            builder.Services.AddScoped<ISubjectMajorService, SubjectService>();
            builder.Services.AddScoped<IStudentSubjectClass, StudentToClassService>();
            builder.Services.AddScoped<ILectureinforBySubject, LectureService>();
            builder.Services.AddScoped<IAtendanceService, AttendanceService>();
            builder.Services.AddHostedService<AutoApproveChangeLogService>();
            builder.Services.AddMemoryCache();
            builder.Services.AddScoped<EmailService>();
            builder.Services.AddAuthentication(JwtBearerDefaults.AuthenticationScheme)
                .AddJwtBearer(options =>
                {
                    options.TokenValidationParameters = new TokenValidationParameters
                    {
                        ValidateIssuer = true,
                        ValidateAudience = true,
                        ValidateLifetime = true,
                        ValidateIssuerSigningKey = true,
                        ValidIssuer = builder.Configuration["Jwt:Issuer"],
                        ValidAudience = builder.Configuration["Jwt:Audience"],
                        IssuerSigningKey = new SymmetricSecurityKey(Encoding.UTF8.GetBytes(builder.Configuration["Jwt:Key"]))
                    };
                });
            builder.Services.AddAuthorization();

            builder.Services.AddSwaggerGen(c =>
            {
                c.SwaggerDoc("v1", new() { Title = "ServerAPI", Version = "v1" });
                c.AddSecurityDefinition("Bearer", new Microsoft.OpenApi.Models.OpenApiSecurityScheme
                {
                    In = Microsoft.OpenApi.Models.ParameterLocation.Header,
                    Description = "Nhập token theo định dạng: Bearer {token}",
                    Name = "Authorization",
                    Type = Microsoft.OpenApi.Models.SecuritySchemeType.ApiKey,
                    Scheme = "Bearer"
                });

                c.AddSecurityRequirement(new Microsoft.OpenApi.Models.OpenApiSecurityRequirement
    {
        {
            new Microsoft.OpenApi.Models.OpenApiSecurityScheme
            {
                Reference = new Microsoft.OpenApi.Models.OpenApiReference
                {
                    Type = Microsoft.OpenApi.Models.ReferenceType.SecurityScheme,
                    Id = "Bearer"
                }
            },
            new string[] {}
        }
    });
            });

            var app = builder.Build();

            // Configure the HTTP request pipeline.
            if (app.Environment.IsDevelopment())
            {
                app.UseSwagger();
                app.UseSwaggerUI();
            }

            //app.UseHttpsRedirection();
            app.UseAuthentication();
            app.UseAuthorization();
            var hasedPassword = BCrypt.Net.BCrypt.HashPassword("123456789");

            using (var scope = app.Services.CreateScope())
            {
                var context = scope.ServiceProvider.GetRequiredService<ServerDataContext>();
                context.Database.Migrate();

                if (!context.Role_People.Any())
                {
                    context.Role_People.AddRange(
                        new Role_person {  Name_role = "Admin" },
                        new Role_person {  Name_role = "Teacher"},
                        new Role_person {  Name_role = "Student"});
                }
                if (!context.user_Universities.Any())
                {
                    context.user_Universities.AddRange(
                        new User_university { Email = "admin@gmail.com", Password_user = hasedPassword, User_name = "Admin", Role_user = 1, MustChangePassword=false });

                }
                if (!context.Status_Attendances.Any())
                    {
                    context.Status_Attendances.AddRange(
                        new Status_attendance {ID_status=0,  Name_status = "Absent" },
                        new Status_attendance { ID_status=1, Name_status = "Present" },
                        new Status_attendance { ID_status=2, Name_status = "Lost Wifi" });

                }
                context.SaveChanges();
            }

            app.MapGet("/Role_person", async (ServerDataContext db) => await db.Role_People.ToListAsync());
          
            app.MapGet("/Status attendance", async (ServerDataContext db) => await db.Status_Attendances.ToListAsync());

    

            app.MapGet("/", () =>
            {
                var html = @"
    <html>
        <head>
            <title>List address API</title>
        </head>
        <body>
            <h1>List Address API</h1>
            <ul>
                <li><a href=""/swagger"">Swagger UI</a></li>
            </ul>
        </body>
    </html>";

                return Results.Content(html, "text/html");
            });
            app.MapControllers();

            app.Run();
        }
    }
}
