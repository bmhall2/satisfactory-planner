using FluentMigrator.Runner;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using SatisfactoryPlanner.Migrations;
using SatisfactoryPlanner.Migrations.Migrators.Migrator_202408031044_AddPlaythrough;

internal class Program
{
    private static void Main(string[] args)
    {
        var builder = new ConfigurationBuilder()
            .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
            .AddJsonFile("appsettings.json", optional: false);
        var config = builder.Build();
            
        var databaseSettings = config.GetSection("DatabaseSettings").Get<DatabaseSettings>();
        if (databaseSettings is null)
        {
            throw new Exception("Database Settings malformed");
        }
        
        using (var serviceProvider = CreateServices(databaseSettings.ConnectionString))
        using (var scope = serviceProvider.CreateScope())
        {
            // Put the database update into a scope to ensure
            // that all resources will be disposed.
            UpdateDatabase(scope.ServiceProvider);
        }
    }

    /// <summary>
    /// Configure the dependency injection services
    /// </summary>
    private static ServiceProvider CreateServices(string connectionString)
    {
        return new ServiceCollection()
            // Add common FluentMigrator services
            .AddFluentMigratorCore()
            .ConfigureRunner(rb => rb
                // Add SQLite support to FluentMigrator
                .AddPostgres()
                // Set the connection string
                .WithGlobalConnectionString(connectionString)
                // Define the assembly containing the migrations
                .ScanIn(typeof(Migrator_202408031044_AddPlaythrough).Assembly).For.Migrations())
            // Enable logging to console in the FluentMigrator way
            .AddLogging(lb => lb.AddFluentMigratorConsole())
            // Build the service provider
            .BuildServiceProvider(false);
    }

    /// <summary>
    /// Update the database
    /// </summary>
    private static void UpdateDatabase(IServiceProvider serviceProvider)
    {
        // Instantiate the runner
        var runner = serviceProvider.GetRequiredService<IMigrationRunner>();

        // Execute the migrations
        runner.MigrateUp();
    }
}