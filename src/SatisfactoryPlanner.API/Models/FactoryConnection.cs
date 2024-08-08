using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("FactoryConnection")]
public class FactoryConnection
{
    public Guid Id { get; set; }

    public required Guid ExportingFactoryId { get; set; }

    public required Factory ExportingFactory { get; set; }

    public required Guid ImportingFactoryId { get; set; }

    public required Factory ImportingFactory { get; set; }

    public required Guid ProductionItemId { get; set;}

    public required ProductionItem ProductionItem { get; set;}

    public decimal Amount { get; set;}
}
