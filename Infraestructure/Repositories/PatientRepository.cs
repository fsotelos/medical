using Domain;

namespace Infraestructure.Repositories
{
    public class PatientRepository : IPatientRepository
    {
        public PatientRepository(MedicalDbContext context)
        {
            Context = context;
        }

        public MedicalDbContext Context { get; }

        public List<PatientDb> GetAll()
        {
            return Context.Patients.ToList();
        }
    }
}
