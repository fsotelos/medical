using System.ComponentModel.DataAnnotations;

namespace Domain
{
    public class PatientDb
    {
        [Key]
        public Guid Id { get; set; }
        public string? FirstName { get; set; }
        public string? LastName { get; set; }
        public int Age { get; set; }
        public int InsuranceCompanyId { get; set; }
    }

}
