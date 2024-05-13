using Microsoft.Extensions.Logging;
using Npgsql;

namespace Infraestructure.Migration
{
    public class MigratorManager
    {
        public static async Task GenerateObjectsIntoDataBase(ILogger logger)
        {
            try
            {
                // Esperar a que la base de datos esté disponible
                await WaitForDatabaseAvailability();

                // Ejecutar los scripts SQL solo la primera vez que la base de datos esté disponible
                await ExecuteMigrationScripts(logger);

                logger.LogInformation("Scripts executed successfully.");
            }
            catch (Exception ex)
            {
                logger.LogError(ex, "Error al generar objetos en la base de datos.");
                throw;
            }
        }

        private static async Task WaitForDatabaseAvailability()
        {
            bool databaseAvailable = false;
            while (!databaseAvailable)
            {
                try
                {
                    using (var connection = new NpgsqlConnection(AppConfigurationManager.GetInstance().ConnectionString))
                    {
                        await connection.OpenAsync();
                        databaseAvailable = true;
                    }
                }
                catch (Exception)
                {
                    await Task.Delay(5000); 
                }
            }
        }

        private static async Task ExecuteMigrationScripts(ILogger logger)
        {
            // Script SQL a ejecutar
            string createTablesScript = File.ReadAllText("./scripts/createTables.sql");
            string insertScript = File.ReadAllText("./scripts/insertTable.sql");

            await ExecuteScript(createTablesScript);
            await ExecuteScript(insertScript);
        }

        private static async Task ExecuteScript(string sqlScript)
        {
            using (var connection = new NpgsqlConnection(AppConfigurationManager.GetInstance().ConnectionString))
            {
                await connection.OpenAsync();
                using (var command = new NpgsqlCommand(sqlScript, connection))
                {
                    await command.ExecuteNonQueryAsync();
                }
            }
        }
    }
}
