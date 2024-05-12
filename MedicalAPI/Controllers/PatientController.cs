using Domain.Entities;
using Microsoft.AspNetCore.Mvc;
using Services;

namespace MedicalAPI.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class PatientController : ControllerBase
    {
        private readonly ILogger<PatientController> _logger;

        public PatientController(IPatientService patientService, ILogger<PatientController> logger)
        {
            PatientService = patientService;
            _logger = logger;
        }

        public IPatientService PatientService { get; }

        [HttpGet]
        [Route("GetAllPatientsVisitCitiesMoreThanTwise")]
        public IEnumerable<Patient> GetAllPatientsVisitCitiesMoreThanTwise()
        {
            return PatientService.GetAllPatientsVisitCitiesMoreThanTwise();
        }
    }
}
