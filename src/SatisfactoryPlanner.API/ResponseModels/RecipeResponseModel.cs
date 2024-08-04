using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeResponseModel
{
    public Guid Id { get; set; }

    public required string Name { get; set; }

    public required MachineType MadeIn { get; set; }

    public List<RecipeIngredientResponseModel> Ingredients { get; set; } = new List<RecipeIngredientResponseModel>();

    public List<RecipeResultResponseModel> Results { get; set; } = new List<RecipeResultResponseModel>();
}