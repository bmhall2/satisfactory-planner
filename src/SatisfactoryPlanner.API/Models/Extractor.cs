using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("Extractor")]
public class Extractor
{
    public Guid Id { get; set; }

    public required Guid FactoryId { get; set; }

    public required ExtractorType ExtractorType { get; set;}

    public required NodePurity? NodePurity { get; set;}

    public required Guid ProductionItemId { get; set; }

    public required ProductionItem ProductionItem { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}

public enum ExtractorType
{
    MinerMk1,
    MinerMk2,
    MinerMk3,
    OilExtractor,
    WaterExtractor,
    ResourceWellPressurizer,
    ResourceWellExtractor
}

public enum NodePurity
{
    Impure = 1,
    Normal = 2,
    Pure = 4
}

public static class ExtractorExtensions
{
    public static decimal ClockedAmount(this Extractor extractor)
    {
        switch (extractor.ExtractorType)
        {
            case ExtractorType.MinerMk1:
                return extractor.ClockSpeed * ((int?)extractor.NodePurity ?? 0) * 30;
            case ExtractorType.MinerMk2:
                return extractor.ClockSpeed * ((int?)extractor.NodePurity ?? 0) * 60;
            case ExtractorType.MinerMk3:
                return extractor.ClockSpeed * ((int?)extractor.NodePurity ?? 0) * 120;
            case ExtractorType.OilExtractor:
                return extractor.ClockSpeed * ((int?)extractor.NodePurity ?? 0) * 60;
            case ExtractorType.WaterExtractor:
                return extractor.ClockSpeed * 120;
            case ExtractorType.ResourceWellPressurizer:
                return 0;
            case ExtractorType.ResourceWellExtractor:
                return extractor.ClockSpeed * ((int?)extractor.NodePurity ?? 0) * 30;
        }

        return 0;
    }
}