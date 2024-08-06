using Microsoft.EntityFrameworkCore;
using SatisfactoryPlanner.API.Configuration;
using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Mapping;
using SatisfactoryPlanner.API.Services;

internal class Program
{
    private static void Main(string[] args)
    {
        var builder = WebApplication.CreateBuilder(args);

        builder.Services
            .AddControllers()
            .AddNewtonsoftJson(options => 
            {
                options.SerializerSettings.ReferenceLoopHandling = Newtonsoft.Json.ReferenceLoopHandling.Ignore;
                options.SerializerSettings.Converters.Add(new Newtonsoft.Json.Converters.StringEnumConverter());
            });

        // Add services to the container.
        // Learn more about configuring Swagger/OpenAPI at https://aka.ms/aspnetcore/swashbuckle
        builder.Services.AddEndpointsApiExplorer();
        builder.Services.AddSwaggerGen();

        var databaseSettings = builder.Configuration.GetSection("DatabaseSettings").Get<DatabaseSettings>();
        if (databaseSettings is null)
        {
            throw new Exception("Database settings not set");
        }
        builder.Services.AddDbContext<ApplicationContext>(options =>
            options.UseNpgsql(databaseSettings.ConnectionString));
        
        builder.Services.AddAutoMapper(typeof(MappingProfile));
        
        builder.Services.AddCors(options =>
        {
            options.AddDefaultPolicy(builder =>
            {
                builder.SetIsOriginAllowed(origin => new Uri(origin).Host == "localhost")
                    .AllowAnyHeader()
                    .AllowAnyMethod();
            });
        });

        builder.Services.AddTransient<IFactoryCalculationService, FactoryCalculationService>();

        var app = builder.Build();

        // Configure the HTTP request pipeline.
        if (app.Environment.IsDevelopment())
        {
            app.UseSwagger();
            app.UseSwaggerUI();
        }

        app.UseHttpsRedirection();

        app.UseAuthorization();

        app.MapControllers();

        app.UseCors();

        app.Run();
    }
}
