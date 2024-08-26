using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("Machine")]
public class Machine
{
    public Guid Id { get; set; }

    public required Guid FactoryId { get; set; }

    public required MachineType MachineType { get; set; }

    public required Guid RecipeId { get; set; }

    public required Recipe Recipe { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}

public enum MachineType
{
    Miner,
    Smelter,
    Foundry,
    Constructor,
    Assembler,
    Manufacturer,
    Refinery,
    Packager,
    Blender,
    ParticleAccelerator,
    BiomassBurner,
    CoalGenerator,
    FuelGenerator,
    NuclearPowerPlant
}

public static class MachineExtensions
{
    public static decimal Power(this Machine machine)
    {
        switch (machine.MachineType)
        {
            case MachineType.Smelter:
                return -4 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Foundry:
                return -16 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Constructor:
                return -4 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Assembler:
                return -15 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Manufacturer:
                return -55 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Refinery:
                return -30 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Packager:
                return -10 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.Blender:
                return -75 * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.ParticleAccelerator:
                return -ParticleAcceleratorAdjustment(machine) * ProductionClockAdjustment(machine.ClockSpeed);
            case MachineType.BiomassBurner:
                return 30;
            case MachineType.CoalGenerator:
                return 75;
            case MachineType.FuelGenerator:
                return 150;
            case MachineType.NuclearPowerPlant:
                return 2500;
        }

        return 0;
    }

    private static decimal ProductionClockAdjustment(decimal clockSpeed)
    {
        return (decimal) Math.Pow((double)clockSpeed, 1.321928);
    }

    private static decimal ParticleAcceleratorAdjustment(Machine machine)
    {
        if (machine.RecipeId == Guid.Parse("e03686c8-8dd0-4120-a7c8-cf8a8492995b")) // Plutonium Pellet
            return 500;

        if (machine.RecipeId == Guid.Parse("fb8fff35-8a28-4092-be05-22664c853b03")) // Instant Plutonium Cell
            return 500;

        if (machine.RecipeId == Guid.Parse("9f1fbca6-e70d-46e1-93b7-433053342e0d")) // Nuclear Pasta
            return 1000;

        return 0;
    }
}