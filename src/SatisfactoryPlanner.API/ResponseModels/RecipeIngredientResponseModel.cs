namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeIngredientResponseModel
{
    public Guid Id { get; set; }

    public required ProductionItemResponseModel ProductionItem { get; set; }

    public required decimal RequiredPerMinute { get; set; }
}