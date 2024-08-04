using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("Recipe")]
public class Recipe
{
    public Guid Id { get; set; }

    public required string Name { get; set; }

    public required MachineType MadeIn { get; set; }

    public List<RecipeIngredient> Ingredients { get; set; } = new List<RecipeIngredient>();

    public List<RecipeResult> Results { get; set; } = new List<RecipeResult>();
}