using Domain.Entities;
using Microsoft.AspNetCore.Mvc;
using Services;

namespace MedicalAPI.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class PatientController : ControllerBase
    {
        
        private readonly ILogger<WeatherForecastController> _logger;

        public PatientController(IPatientService patientService, ILogger<WeatherForecastController> logger)
        {
            PatientService = patientService;
            _logger = logger;
        }

        public IPatientService PatientService { get; }

        [HttpGet(Name = "GetAllPatinets")]
        public IEnumerable<Patient> Get()
        {
            return PatientService.GetPatients();
        }
    }
}
