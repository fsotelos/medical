using Domain;
using Domain.Entities;
using Infraestructure.Repositories;
using Domain.Mappers;
namespace Services
{
    public class PatientService : IPatientService
    {
        public PatientService(IPatientRepository patientRepository)
        {
            PatientRepository = patientRepository;
        }

        public IPatientRepository PatientRepository { get; }

        public List<Patient> GetPatients()
        {
            var result = PatientRepository.GetAll();
            return result.Map();
        }
    }
}
