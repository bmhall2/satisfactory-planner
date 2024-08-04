using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.ResponseModels;

public class MachineResponseModel
{
    public Guid Id { get; set; }

    public required MachineType MachineType { get; set; }

    public required RecipeSummaryResponseModel Recipe { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}