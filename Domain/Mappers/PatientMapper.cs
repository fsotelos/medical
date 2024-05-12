using Domain.Entities;


namespace Domain.Mappers
{
    public static class PatientMapper
    {
        public static List<Patient> Map(this List<PatientDb> patients)
        {
            List<Patient> list = new List<Patient>();
            foreach (PatientDb patient in patients)
            {
                list.Add(new Patient
                {
                    Id = patient.Id,
                    Age = patient.Age,
                    FirstName = patient.FirstName,
                    InsuranceCompanyId = patient.InsuranceCompanyId,
                    LastName = patient.LastName,
                });
            }
            return list;
        }
    }
}
