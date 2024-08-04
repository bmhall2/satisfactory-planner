using Microsoft.EntityFrameworkCore;
using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.Services;

public class FactorySummary
{
    public Dictionary<ProductionItem, decimal> Balances { get; set; } = new Dictionary<ProductionItem, decimal>();
}

public interface IFactoryCalculationService
{
    Factory CalculateProductionRates(Factory factory);
    FactorySummary CalculateSummary(Factory factory);
}

public class FactoryCalculationService(
    ApplicationContext _applicationContext) : IFactoryCalculationService
{
    public Factory CalculateProductionRates(Factory factory)
    {
        // TODO: Issue here with recipe being shared
        foreach (var machine in factory.Machines)
        {
            foreach (var ingredient in machine.Recipe.Ingredients)
            {
                ingredient.RequiredPerMinute *= machine.ClockSpeed;
            }

            foreach (var result in machine.Recipe.Results)
            {
                result.ProducedPerMinute *= machine.ClockSpeed;
            }
        }

        return factory;
    }

    public FactorySummary CalculateSummary(Factory factory)
    {
        var balances = new Dictionary<Guid, decimal>();
        foreach (var machine in factory.Machines)
        {
            foreach (var result in machine.Recipe.Results)
            {
                var clockedProducedPerMinute = result.ProducedPerMinute * machine.ClockSpeed;
                if (!balances.TryAdd(result.ProductionItemId, clockedProducedPerMinute))
                {
                    balances[result.ProductionItemId] += clockedProducedPerMinute;
                }
            }

            foreach (var ingredient in machine.Recipe.Ingredients)
            {
                var clockedRequiredPerMinute = ingredient.RequiredPerMinute * machine.ClockSpeed;
                if (!balances.TryAdd(ingredient.ProductionItemId, -clockedRequiredPerMinute))
                {
                    balances[ingredient.ProductionItemId] -= clockedRequiredPerMinute;
                }
            }
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
            Balances = responseBalances
        };
    }
}