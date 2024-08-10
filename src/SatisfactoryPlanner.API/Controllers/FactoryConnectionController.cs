using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class FactoryConnectionController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet("{id}")]
    public ActionResult<FactoryConnection> GetFactoryConnection(Guid id)
    {        
        var factoryConnection = _applicationContext.FactoryConnections
            .Include(fc => fc.ExportingFactory)
            .Include(fc => fc.ImportingFactory)
            .Include(fc => fc.ProductionItem)
            .Where(fc => fc.Id == id)
            .FirstOrDefault();
        
        if (factoryConnection == null)
            return new NotFoundResult();

        return factoryConnection;
    }

    [HttpPost]
    public ActionResult<FactoryConnection> Create(
        [FromQuery] Guid exportingFactoryId,
        [FromQuery] Guid importingFactoryId,
        [FromQuery] Guid productionItemId,
        [FromQuery] decimal amount)
    {
        var exportingFactory = _applicationContext.Factories.Where(f => f.Id == exportingFactoryId).FirstOrDefault();
        if (exportingFactory == null)
            return new NotFoundResult();
        
        var importingFactory = _applicationContext.Factories.Where(f => f.Id == importingFactoryId).FirstOrDefault();
        if (importingFactory == null)
            return new NotFoundResult();

        var productionItem = _applicationContext.ProductionItems.Where(p => p.Id == productionItemId).FirstOrDefault();
        if (productionItem == null)
            return new NotFoundResult();
        
        var factoryConnection = new FactoryConnection()
        {
            Id = Guid.NewGuid(),
            ExportingFactoryId = exportingFactory.Id,
            ExportingFactory = exportingFactory,
            ImportingFactoryId = importingFactory.Id,
            ImportingFactory = importingFactory,
            ProductionItemId = productionItem.Id,
            ProductionItem = productionItem,
            Amount = amount
        };

        _applicationContext.FactoryConnections.Add(factoryConnection);
        _applicationContext.SaveChanges();

        return factoryConnection;
    }

    [HttpPut("{id}")]
    public ActionResult<FactoryConnection> Update(Guid id, [FromQuery] decimal amount)
    {        
        var factoryConnection = _applicationContext.FactoryConnections
            .Include(fc => fc.ExportingFactory)
            .Include(fc => fc.ImportingFactory)
            .Include(fc => fc.ProductionItem)
            .Where(fc => fc.Id == id)
            .FirstOrDefault();
        
        if (factoryConnection == null)
            return new NotFoundResult();

        factoryConnection.Amount = amount;

        _applicationContext.SaveChanges();

        return factoryConnection;
    }

    [HttpDelete("{id}")]
    public ActionResult Delete(Guid id)
    {
        var factoryConnection = _applicationContext.FactoryConnections.Where(fc => fc.Id == id).SingleOrDefault();
        if (factoryConnection is null)
        {
            return new NotFoundResult();
        }

        _applicationContext.Remove(factoryConnection);
        _applicationContext.SaveChanges();

        return Ok();
    }
}
