using Infraestructure;
using Infraestructure.Migration;
using Infraestructure.Repositories;
using MedicalAPI.Middleware;
using Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
AppConfigurationManager.GetInstance().ConnectionString = builder.Configuration.GetConnectionString("DefaultConnection");

builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddTransient<IPatientService, PatientService>();
builder.Services.AddTransient<IPatientRepository, PatientRepository>();


builder.Services.AddControllers();

var app = builder.Build();

var loggerFactory = LoggerFactory.Create(loggingBuilder => loggingBuilder
    .SetMinimumLevel(LogLevel.Trace));

ILogger logger = loggerFactory.CreateLogger<Program>();


app.UseSwagger();
app.UseSwaggerUI();


app.ConfigureExceptionHandler(logger);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();

await MigratorManager.GenerateObjectsIntoDataBase(logger);

app.Run();
