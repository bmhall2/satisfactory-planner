namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeIngredientSummaryResponseModel
{
    public required ProductionItemSummaryResponseModel ProductionItem { get; set; }

    public required decimal RequiredPerMinute { get; set; }
}