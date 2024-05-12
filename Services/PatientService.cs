using Domain.Entities;
using Domain.Mappers;
using Infraestructure.Repositories;
namespace Services
{
    public class PatientService : IPatientService
    {
        public PatientService(IPatientRepository patientRepository)
        {
            PatientRepository = patientRepository;
        }

        public IPatientRepository PatientRepository { get; }

        public List<Patient> GetAllPatientsVisitCitiesMoreThanTwise()
        {
            var result = PatientRepository.GetAllPatientsVisitCitiesMoreThanTwise();
            return result.Map();
        }
    }
}
