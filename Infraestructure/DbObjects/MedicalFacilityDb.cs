using System.ComponentModel.DataAnnotations;

namespace Domain.Entities
{
    public class MedicalFacilityDb
    {
        [Key]
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
    }
}
