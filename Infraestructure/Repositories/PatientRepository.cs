using Dapper;
using Domain;
using Microsoft.Extensions.Logging;
using Npgsql;
using System.Data;

namespace Infraestructure.Repositories
{
    public class PatientRepository : IPatientRepository
    {
        private IDbConnection db;
        public PatientRepository(ILogger<PatientRepository> logger)
        {
            string cs = AppConfigurationManager.GetInstance().ConnectionString;
            logger.LogInformation(cs);
            db = new NpgsqlConnection(cs);
        }

        public List<PatientDb> GetAllPatientsVisitCitiesMoreThanTwise()
        {
            IDataReader result = db.ExecuteReader(@"select p.id, p.firstname, p.lastname, p.age,
                                                    string_agg(distinct mf.city, ', ') as visitedcities
                                                    from public.patients p
                                                    join public.patientvisitmedicalfacilities pv on p.id = pv.patientid
                                                    join public.medicalfacilities mf on pv.medicalfacilityid = mf.id
                                                    join public.insurancecompanies ic on p.insurancecompanyid = ic.id
                                                    group by p.id, p.firstname, p.lastname, p.age
                                                    having count(distinct mf.city) >= 2
                                                    order by count(*) asc;");

            List<PatientDb> listPatients = new List<PatientDb>();

            while (result.Read())
            {
                listPatients.Add(new PatientDb
                {
                    Id = result.GetGuid(0),
                    FirstName = result.GetString(1),
                    LastName = result.GetString(2),
                    Age = result.GetInt16(3),
                    VisitedCities = result.GetString(4)
                }); 
            }

            return listPatients;
        }
    }
}
