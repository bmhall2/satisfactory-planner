using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ExtractorController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet("{id}")]
    public ActionResult<Extractor> Get(Guid id)
    {        
        var extractor = _applicationContext.Extractors
            .Where(e => e.Id == id)
            .Include(e => e.ProductionItem)
            .FirstOrDefault();
        
        if (extractor == null)
            return new NotFoundResult();

        return extractor;
    }

    [HttpPost]
    public ActionResult<Extractor> Create(
        [FromQuery] Guid factoryId,
        [FromQuery] ExtractorType extractorType,
        [FromQuery] NodePurity? nodePurity,
        [FromQuery] Guid productionItemId,
        [FromQuery] decimal clockSpeed)
    {
        var productionItem = _applicationContext.ProductionItems.Where(p => p.Id == productionItemId).FirstOrDefault();
        if (productionItem is null)
        {
            return new NotFoundResult();
        }

        var extractor = new Extractor()
        {
            Id = Guid.NewGuid(),
            FactoryId = factoryId,
            ExtractorType = extractorType,
            NodePurity = nodePurity,
            ProductionItemId = productionItemId,
            ProductionItem = productionItem,
            ClockSpeed = clockSpeed
        };

        _applicationContext.Extractors.Add(extractor);
        _applicationContext.SaveChanges();

        return extractor;
    }

    [HttpPut("{id}")]
    public ActionResult<Extractor> Update(
        Guid id,
        [FromQuery] decimal clockSpeed)
    {
        var extractor = _applicationContext.Extractors
                            .Where(e => e.Id == id)
                            .Include(e => e.ProductionItem)
                            .SingleOrDefault();

        if (extractor is null)
        {
            return new NotFoundResult();
        }

        extractor.ClockSpeed = clockSpeed;

        _applicationContext.SaveChanges();

        return extractor;
    }

    [HttpDelete("{id}")]
    public ActionResult Delete(Guid id)
    {
        var extractor = _applicationContext.Extractors.Where(e => e.Id == id).SingleOrDefault();
        if (extractor is null)
        {
            return new NotFoundResult();
        }

        _applicationContext.Remove(extractor);
        _applicationContext.SaveChanges();

        return Ok();
    }

    [HttpGet("ProductionItem/{extractorType}")]
    public ActionResult<IEnumerable<ExtractorProductionItem>> Get(ExtractorType extractorType)
    {        
        var extractorProductionItems = _applicationContext.ExtractorProductionItems
            .Where(e => e.ExtractorType == extractorType)
            .Include(e => e.ProductionItem)
            .ToList();

        return extractorProductionItems;
    }
}
