namespace SatisfactoryPlanner.API.ResponseModels;

public class FactoryResponseModel
{
    public Guid Id { get; set; }

    public required Guid PlaythroughId { get; set; }

    public required string Name { get; set; }

    public List<MachineSummaryResponseModel> Machines { get; set; } = new List<MachineSummaryResponseModel>();
}

