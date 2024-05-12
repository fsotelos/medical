using Dapper;
using Domain;
using Microsoft.Extensions.Configuration;
using Npgsql;
using System.Data;

namespace Infraestructure.Repositories
{
    public class PatientRepository : IPatientRepository
    {
        private IDbConnection db;
        public PatientRepository(IConfiguration configuration)
        {
            db = new NpgsqlConnection(configuration.GetConnectionString("DefaultConnection"));
        }

        public List<PatientDb> GetAllPatientsVisitCitiesMoreThanTwise()
        {
            IDataReader result = db.ExecuteReader(@"SELECT p.Id, p.FirstName, p.LastName, p.Age,
                                            STRING_AGG(DISTINCT mf.City, ', ') AS VisitedCities
                                            FROM Patients p
                                            JOIN PatientvisitMedicalFacilities pv ON p.id = pv.patientid
                                            JOIN MedicalFacilities mf ON pv.medicalfacilityid = mf.Id
                                            JOIN InsuranceCompanies ic ON p.InsuranceCompanyId = ic.Id
                                            GROUP BY p.Id, p.FirstName, p.LastName, p.Age
                                            HAVING COUNT(DISTINCT mf.City) >= 2
                                            ORDER BY COUNT(*) ASC;");

            List<PatientDb> listPatients = new List<PatientDb>();

            while (result.Read())
            {
                listPatients.Add(new PatientDb
                {
                    Id = result.GetGuid(0),
                    FirstName = result.GetString(1),
                    LastName = result.GetString(2),
                    Age = result.GetInt32(3),
                    VisitedCities = result.GetString(4)
                }); 
            }

            return listPatients;
        }
    }
}
