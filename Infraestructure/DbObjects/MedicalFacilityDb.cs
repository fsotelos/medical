using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace Domain.Entities
{
    [Table("MedicalFacilities")]
    public class MedicalFacilityDb
    {
        [Key]
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
    }
}
