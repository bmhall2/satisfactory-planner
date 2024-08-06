using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("Miner")]
public class Miner
{
    public Guid Id { get; set; }

    public required Guid FactoryId { get; set; }

    public required Mark Mk { get; set; }

    public required NodePurity NodePurity { get; set;}

    public required Guid ProductionItemId { get; set; }

    public required ProductionItem ProductionItem { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}

public enum Mark
{
    I = 1,
    II = 2,
    III = 3
}

public enum NodePurity
{
    Impure = 30,
    Normal = 60,
    Pure = 120
}