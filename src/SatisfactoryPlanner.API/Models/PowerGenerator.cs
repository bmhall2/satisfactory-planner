using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("PowerGenerator")]
public class PowerGenerator
{
    public Guid Id { get; set; }

    public required Guid FactoryId { get; set; }

    public required PowerGeneratorType PowerGeneratorType { get; set;}

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

public static class PowerGeneratorExtensions
{
    public static decimal ClockedPowerAmount(this PowerGenerator powerGenerator)
    {
        switch (powerGenerator.PowerGeneratorType)
        {
            case PowerGeneratorType.BiomassBurner:
                return powerGenerator.ClockSpeed * 30;
            case PowerGeneratorType.CoalGenerator:
                return powerGenerator.ClockSpeed * 75;
            case PowerGeneratorType.FuelGenerator:
                return powerGenerator.ClockSpeed * 150;
            case PowerGeneratorType.NuclearPowerPlant:
                return powerGenerator.ClockSpeed * 2500;
        }

        return 0;
    }
}