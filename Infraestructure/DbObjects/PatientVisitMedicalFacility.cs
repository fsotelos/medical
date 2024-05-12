using System.ComponentModel.DataAnnotations.Schema;

namespace Infraestructure.DbObjects
{
    [Table("PatientVisitMedicalFacilities")]
    public class PatientVisitMedicalFacility
    {
        
        public int PatientId { get; set; }
        
        public int MedicalFacilityId { get; set; }
    }
}
