using System.ComponentModel.DataAnnotations.Schema;

namespace SatisfactoryPlanner.API.Models;

[Table("Playthrough")]
public class Playthrough
{
    public Guid Id { get; set; }

    public required string Name { get; set; }

    public List<Factory> Factories { get; set; } = new List<Factory>();
}