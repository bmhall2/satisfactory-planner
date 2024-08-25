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