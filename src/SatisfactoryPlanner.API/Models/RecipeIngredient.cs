using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("RecipeIngredient")]
public class RecipeIngredient
{
    public Guid Id { get; set; }

    public required Guid RecipeId { get; set; }

    public required Guid ProductionItemId { get; set; }
    public required ProductionItem ProductionItem { get; set; }

    public required decimal RequiredPerMinute { get; set; }
}