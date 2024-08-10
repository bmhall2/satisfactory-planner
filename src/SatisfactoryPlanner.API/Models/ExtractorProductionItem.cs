using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("ExtractorProductionItem")]
public class ExtractorProductionItem
{
    public Guid Id { get; set; }

    public required ExtractorType ExtractorType { get; set;}

    public required Guid ProductionItemId { get; set; }

    public required ProductionItem ProductionItem { get; set;}
}