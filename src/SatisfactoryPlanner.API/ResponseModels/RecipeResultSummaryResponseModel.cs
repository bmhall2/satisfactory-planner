namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeResultSummaryResponseModel
{
    public required ProductionItemSummaryResponseModel ProductionItem { get; set; }

    public required decimal ProducedPerMinute { get; set; }
}