using Domain;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using Npgsql;
using System.Data;

namespace Infraestructure
{
    public  class MedicalDbContext : DbContext
    {
        public MedicalDbContext(IConfiguration configuration) : base() {
            Configuration = configuration;
        }

        public IConfiguration Configuration { get; }

        public IDbConnection GetConnection()
        {
            var connectionString = Configuration.GetConnectionString("DefaultConnection");
                return new NpgsqlConnection(connectionString);
        }

        public DbSet<PatientDb> Patients { get; set; }
    }
}
