using Dapper.Contrib.Extensions;
using System.ComponentModel.DataAnnotations;

namespace Domain.Entities
{
    [Table("InsuranceCompanies")]
    public class InsuranceCompanyDb
    {
        [ExplicitKey]
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
    }
}
