using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.ResponseModels;

public class FactoryResponseModel
{
    public Guid Id { get; set; }

    public required Guid PlaythroughId { get; set; }

    public required string Name { get; set; }

    public List<Machine> Machines { get; set; } = new List<Machine>();

    public List<Machine> PowerGenerators { get; set;} = new List<Machine>();

    public List<Extractor> Extractors { get; set; } = new List<Extractor>();

    public List<FactoryConnection> ExportConnections { get; set; } = new List<FactoryConnection>();

    public List<FactoryConnection> ImportConnections { get; set; } = new List<FactoryConnection>();
}