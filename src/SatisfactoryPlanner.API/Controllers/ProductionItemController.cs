using SatisfactoryPlanner.API.Database;
using Microsoft.AspNetCore.Mvc;
using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class ProductionItemController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet()]
    public ActionResult<IEnumerable<ProductionItem>> Search()
    {        
        var query = _applicationContext
                        .ProductionItems
                        .AsQueryable();

        query = query.OrderBy(pi => pi.Name);

        var results = query.ToList();

        return results;
    }
}
