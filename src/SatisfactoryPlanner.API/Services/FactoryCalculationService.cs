using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.Services;

public class FactorySummary
{
    public Dictionary<ProductionItem, decimal> Balances { get; set; } = new Dictionary<ProductionItem, decimal>();
    public List<MachineOutputSummary> MachineOutputs { get; set; } = new List<MachineOutputSummary>();
    public List<MinerOutputSummary> MinerOutputs { get; set; } = new List<MinerOutputSummary>();
    public List<ImportSummary> Imports { get; set; } = new List<ImportSummary>();
    public List<ExportSummary> Exports { get; set; } = new List<ExportSummary>();
}

public class MachineOutputSummary
{
    public required MachineType MachineType { get; set; }

    public required RecipeOutputSummary RecipeOutput { get; set;}

    public required decimal ClockSpeed { get; set; } = 1;
}

public class MinerOutputSummary
{
    public required ProductionItem ProductionItem { get; set; }

    public required decimal ProducedPerMinute { get; set; }
}

public class ImportSummary
{
    public required ProductionItem ProductionItem { get; set; }

    public required decimal ImportedPerMinute { get; set; }
}

public class ExportSummary
{
    public required ProductionItem ProductionItem { get; set; }

    public required decimal ExportedPerMinute { get; set; }
}

public class RecipeOutputSummary
{
    public required string Name { get; set; }
    
    public required List<IngredientOutputSummary> IngredientOutputs { get; set; } = new List<IngredientOutputSummary>();

    public required List<ResultOutputSummary> ResultOutputs { get; set; } = new List<ResultOutputSummary>();
}

public class IngredientOutputSummary
{
    public required ProductionItem ProductionItem { get; set; }

    public required decimal RequiredPerMinute { get; set; }
}

public class ResultOutputSummary
{
    public required ProductionItem ProductionItem { get; set; }

    public required decimal ProducedPerMinute { get; set; }
}

public interface IFactoryCalculationService
{
    FactorySummary CalculateSummary(Factory factory);
}

public class FactoryCalculationService(
    ApplicationContext _applicationContext) : IFactoryCalculationService
{
    public FactorySummary CalculateSummary(Factory factory)
    {
        var balances = new Dictionary<Guid, decimal>();
        var machineOutputs = new List<MachineOutputSummary>();
        foreach (var machine in factory.Machines)
        {
            var machineOutput = new MachineOutputSummary
            {
                MachineType = machine.MachineType,
                ClockSpeed = machine.ClockSpeed,
                RecipeOutput = new RecipeOutputSummary
                {
                    Name = machine.Recipe.Name,
                    IngredientOutputs = new List<IngredientOutputSummary>(),
                    ResultOutputs = new List<ResultOutputSummary>()
                }
            };

            foreach (var result in machine.Recipe.Results)
            {
                var clockedProducedPerMinute = result.ProducedPerMinute * machine.ClockSpeed;
                if (!balances.TryAdd(result.ProductionItemId, clockedProducedPerMinute))
                {
                    balances[result.ProductionItemId] += clockedProducedPerMinute;
                }

                machineOutput.RecipeOutput.ResultOutputs.Add(new ResultOutputSummary
                {
                    ProductionItem = result.ProductionItem,
                    ProducedPerMinute = clockedProducedPerMinute
                });
            }

            foreach (var ingredient in machine.Recipe.Ingredients)
            {
                var clockedRequiredPerMinute = ingredient.RequiredPerMinute * machine.ClockSpeed;
                if (!balances.TryAdd(ingredient.ProductionItemId, -clockedRequiredPerMinute))
                {
                    balances[ingredient.ProductionItemId] -= clockedRequiredPerMinute;
                }

                machineOutput.RecipeOutput.IngredientOutputs.Add(new IngredientOutputSummary
                {
                    ProductionItem = ingredient.ProductionItem,
                    RequiredPerMinute = clockedRequiredPerMinute
                });
            }

            machineOutputs.Add(machineOutput);
        }

        var minerOutputs = new List<MinerOutputSummary>();
        foreach (var miner in factory.Miners)
        {
            var clockedProducedPerMinute = (int)miner.NodePurity * (int)miner.Mk * miner.ClockSpeed;
            if (!balances.TryAdd(miner.ProductionItemId, clockedProducedPerMinute))
            {
                balances[miner.ProductionItemId] += clockedProducedPerMinute;
            }

            minerOutputs.Add(new MinerOutputSummary()
            {
                ProductionItem = miner.ProductionItem,
                ProducedPerMinute = clockedProducedPerMinute
            });
        }

        var imports = new List<ImportSummary>();
        foreach (var import in factory.ImportConnections)
        {
            if (!balances.TryAdd(import.ProductionItemId, import.Amount))
            {
                balances[import.ProductionItemId] += import.Amount;
            }

            imports.Add(new ImportSummary()
            {
                ProductionItem = import.ProductionItem,
                ImportedPerMinute = import.Amount
            });
        }

        var exports = new List<ExportSummary>();
        foreach (var export in factory.ExportConnections)
        {
            if (!balances.TryAdd(export.ProductionItemId, export.Amount))
            {
                balances[export.ProductionItemId] -= export.Amount;
            }

            exports.Add(new ExportSummary()
            {
                ProductionItem = export.ProductionItem,
                ExportedPerMinute = export.Amount
            });
        }

        var responseBalances = new Dictionary<ProductionItem, decimal>();
        var nonZeroItemIds = balances.Where(b => b.Value != 0).Select(b => b.Key).ToList();
        var items = _applicationContext
                        .ProductionItems
                        .Where(pi => nonZeroItemIds.Contains(pi.Id))
                        .ToList();
        
        foreach (var item in items)
        {
            responseBalances.Add(item, balances[item.Id]);
        }

        return new FactorySummary()
        {
            Balances = responseBalances,
            MachineOutputs = machineOutputs,
            MinerOutputs = minerOutputs,
            Imports = imports,
            Exports = exports
        };
    }
}