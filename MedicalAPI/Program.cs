using Infraestructure.Repositories;
using MedicalAPI.Middleware;
using Services;

var builder = WebApplication.CreateBuilder(args);

// Add services to the container.

builder.Services.AddControllers();
// Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
builder.Services.AddEndpointsApiExplorer();
builder.Services.AddSwaggerGen();

builder.Services.AddTransient<IPatientService, PatientService>();
builder.Services.AddTransient<IPatientRepository, PatientRepository>();


builder.Services.AddControllers(); 

var app = builder.Build();

var loggerFactory = LoggerFactory.Create(loggingBuilder => loggingBuilder
    .SetMinimumLevel(LogLevel.Trace));

//// Use the logger factory to create an instance of ILogger
ILogger logger = loggerFactory.CreateLogger<Program>();

// Configure the HTTP request pipeline.
if (app.Environment.IsDevelopment())
{
    app.UseSwagger();
    app.UseSwaggerUI();
}

app.ConfigureExceptionHandler(logger);

app.UseHttpsRedirection();

app.UseAuthorization();

app.MapControllers();
app.Run();
