using Domain;

namespace Infraestructure.Repositories
{
    public interface IPatientRepository
    {
        MedicalDbContext Context { get; }

        List<PatientDb> GetAll();
    }
}