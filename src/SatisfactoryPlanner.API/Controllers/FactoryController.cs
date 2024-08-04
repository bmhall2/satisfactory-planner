using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using AutoMapper;
using SatisfactoryPlanner.API.ResponseModels;
using SatisfactoryPlanner.API.Services;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class FactoryController(
    ApplicationContext _applicationContext,
    IFactoryCalculationService _factoryCalculationService,
    IMapper _mapper) : ControllerBase
{
    [HttpGet()]
    public ActionResult<IEnumerable<FactoryResponseModel>> Search([FromQuery] Guid? playthroughId)
    {        
        var query = _applicationContext
                        .Factories
                        .Include(f => f.Machines).ThenInclude(m => m.Recipe)
                        .AsQueryable();

        if (playthroughId.HasValue)
        {
            query = query.Where(x => x.PlaythroughId == playthroughId);
        }

        var results = query.ToList();

        return _mapper.Map<List<FactoryResponseModel>>(results);
    }

    [HttpGet("{id}")]
    public ActionResult<FactoryResponseModel> Get(Guid id)
    {        
        var factory = _applicationContext.Factories
            .Where(p => p.Id == id)
            .Include(f => f.Machines).ThenInclude(m => m.Recipe).ThenInclude(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
            .Include(f => f.Machines).ThenInclude(m => m.Recipe).ThenInclude(r => r.Results).ThenInclude(r => r.ProductionItem)
            .FirstOrDefault();
        
        if (factory == null)
            return new NotFoundResult();

        var response = _mapper.Map<FactoryResponseModel>(factory);

        return response;
    }

    [HttpGet("{id}/Summary")]
    public ActionResult<FactorySummaryResponseModel> GetSummary(Guid id)
    {        
        var factory = _applicationContext.Factories
            .Where(p => p.Id == id)
            .Include(f => f.Machines).ThenInclude(m => m.Recipe).ThenInclude(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
            .Include(f => f.Machines).ThenInclude(m => m.Recipe).ThenInclude(r => r.Results).ThenInclude(r => r.ProductionItem)
            .FirstOrDefault();
        
        if (factory == null)
            return new NotFoundResult();

        var summary = _factoryCalculationService.CalculateSummary(factory);
        var responseTotals = new List<FactorySummaryTotalModel>();
        foreach (var balance in summary.Balances)
        {
            responseTotals.Add(new FactorySummaryTotalModel()
            {
                ProductionItem = _mapper.Map<ProductionItemSummaryResponseModel>(balance.Key),
                Amount = balance.Value
            });
        }

        var response = _mapper.Map<FactorySummaryResponseModel>(factory);
        response.Balances = responseTotals;
        response.MachineOutputs = summary.MachineOutputs.OrderBy(mo => mo.MachineType).ToList();

        return response;
    }

    [HttpPost]
    public ActionResult<FactoryResponseModel> Create([FromQuery] Guid playthroughId, [FromQuery] string name)
    {
        var factory = new Factory()
        {
            Id = Guid.NewGuid(),
            PlaythroughId = playthroughId,
            Name = name
        };

        _applicationContext.Factories.Add(factory);
        _applicationContext.SaveChanges();

        return _mapper.Map<FactoryResponseModel>(factory);
    }
}
