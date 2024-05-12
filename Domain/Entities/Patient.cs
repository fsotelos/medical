namespace Domain.Entities
{
    public class Patient
    {
        public Guid Id { get; set; }
        public string? FullName { get; set; }
        public int Age { get; set; }
        public string? VisitedCities { get; set; }
        public string? Category { get; set; }
    }
}
