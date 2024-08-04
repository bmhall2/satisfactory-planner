namespace SatisfactoryPlanner.API.ResponseModels;

public class RecipeResultResponseModel
{
    public Guid Id { get; set; }

    public required ProductionItemResponseModel ProductionItem { get; set; }

    public required decimal ProducedPerMinute { get; set; }
}