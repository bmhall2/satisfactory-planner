using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("PowerGenerator")]
public class PowerGenerator
{
    public Guid Id { get; set; }

    public required Guid FactoryId { get; set; }

    public required PowerGeneratorType ExtractorType { get; set;}

    public required Guid ProductionItemId { get; set; }

    public required ProductionItem ProductionItem { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}

public enum PowerGeneratorType
{
    BiomassBurner,
    CoalGenerator,
    FuelGenerator,
    NuclearPowerPlant
}