using Domain;

namespace Infraestructure.Repositories
{
    public interface IPatientRepository
    {
        List<PatientDb> GetAllPatientsVisitCitiesMoreThanTwise();
    }
}