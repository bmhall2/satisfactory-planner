using SatisfactoryPlanner.API.Models;
using SatisfactoryPlanner.API.Services;

namespace SatisfactoryPlanner.API.ResponseModels;

public class FactorySummaryResponseModel
{
    public Guid Id { get; set; }

    public required Guid PlaythroughId { get; set; }

    public required string Name { get; set; }

    public List<FactorySummaryTotalModel> Balances { get; set; } = new List<FactorySummaryTotalModel>();

    public List<MachineOutputSummary> MachineOutputs { get; set; } = new List<MachineOutputSummary>();

    public List<ExtractorOutputSummary> ExtractorOutputs { get; set; } = new List<ExtractorOutputSummary>();

    public List<ImportSummary> Imports { get; set; } = new List<ImportSummary>();
    
    public List<ExportSummary> Exports { get; set; } = new List<ExportSummary>();
}

public class FactorySummaryTotalModel
{
    public required ProductionItem ProductionItem { get; set;}
    public required decimal Amount { get; set; }
}