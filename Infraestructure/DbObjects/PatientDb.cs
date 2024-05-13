using Dapper.Contrib.Extensions;
using Domain.Entities;

namespace Domain
{
    [Table("patients")]
    public class PatientDb
    {
        [ExplicitKey]
        public Guid Id { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public int Age { get; set; }
        [Write(false)]
        public string? VisitedCities { get; set; }
        [Computed]
        public InsuranceCompanyDb InsuranceCompany { get; set; }
    }

}
