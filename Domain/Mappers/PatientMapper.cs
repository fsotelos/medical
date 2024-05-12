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
                    FullName = patient.LastName + ", " + patient.FirstName,
                    Category = patient.Age  < 16 ? "A" : "B",
                    VisitedCities = patient.VisitedCities  
                });
            }
            return list;
        }
    }
}
