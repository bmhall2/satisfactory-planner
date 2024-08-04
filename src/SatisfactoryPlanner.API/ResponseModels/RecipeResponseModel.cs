namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeResponseModel
{
    public Guid Id { get; set; }

    public required string Name { get; set; }

    public List<RecipeIngredientResponseModel> Ingredients { get; set; } = new List<RecipeIngredientResponseModel>();

    public List<RecipeResultSummaryResponseModel> Results { get; set; } = new List<RecipeResultSummaryResponseModel>();
}