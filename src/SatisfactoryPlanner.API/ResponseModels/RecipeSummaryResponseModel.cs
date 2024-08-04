namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeSummaryResponseModel
{
    public required string Name { get; set; }

    public List<RecipeIngredientSummaryResponseModel> Ingredients { get; set; } = new List<RecipeIngredientSummaryResponseModel>();

    public List<RecipeResultResponseModel> Results { get; set; } = new List<RecipeResultResponseModel>();
}