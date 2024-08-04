using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("ProductionItem")]
public class ProductionItem
{
    public Guid Id { get; set; }

    public required string Name { get; set; }
}