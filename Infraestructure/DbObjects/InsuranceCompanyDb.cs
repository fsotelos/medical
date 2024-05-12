using System.ComponentModel.DataAnnotations;

namespace Domain.Entities
{
    public class InsuranceCompanyDb
    {
        [Key]
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
    }
}
