using SatisfactoryPlanner.API.Models;
using Microsoft.EntityFrameworkCore;

namespace SatisfactoryPlanner.API.Database;

public class ApplicationContext(DbContextOptions options) : DbContext(options)
{
    public DbSet<ProductionItem> ProductionItems { get; set; }
    public DbSet<Recipe> Recipes { get; set; }
    public DbSet<RecipeIngredient> RecipeIngredients { get; set; }
    public DbSet<RecipeResult> RecipeResults { get; set; }
    public DbSet<Playthrough> Playthroughs { get; set; }
    public DbSet<Factory> Factories { get; set; }
    public DbSet<Machine> Machines { get; set; }
}