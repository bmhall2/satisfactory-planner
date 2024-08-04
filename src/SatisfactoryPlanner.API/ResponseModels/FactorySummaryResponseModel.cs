namespace SatisfactoryPlanner.API.ResponseModels;

public class FactorySummaryResponseModel
{
    public Guid Id { get; set; }

    public required Guid PlaythroughId { get; set; }

    public required string Name { get; set; }

    public List<FactorySummaryTotalModel> Balances { get; set; } = new List<FactorySummaryTotalModel>();
}

public class FactorySummaryTotalModel
{
    public required ProductionItemSummaryResponseModel ProductionItem { get; set;}
    public required decimal Amount { get; set; }
}