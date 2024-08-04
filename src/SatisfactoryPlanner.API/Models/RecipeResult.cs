using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("RecipeResult")]
public class RecipeResult
{
    public Guid Id { get; set; }

    public required Guid RecipeId { get; set; }

    public required Guid ProductionItemId { get; set; }
    public required ProductionItem ProductionItem { get; set; }

    public required decimal ProducedPerMinute { get; set; }
}