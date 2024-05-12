using Domain;
using Domain.Entities;
using Infraestructure.Repositories;

namespace Services
{
    public interface IPatientService
    {
        IPatientRepository PatientRepository { get; }

        List<Patient> GetPatients();
    }
}