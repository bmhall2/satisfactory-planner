using SatisfactoryPlanner.API.Database;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using SatisfactoryPlanner.API.Models;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class RecipeController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet()]
    public ActionResult<IEnumerable<Recipe>> Search([FromQuery] string? term)
    {        
        var query = _applicationContext
                        .Recipes
                        .Include(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
                        .Include(r => r.Results).ThenInclude(r => r.ProductionItem)
                        .AsQueryable();
        
        if (!string.IsNullOrEmpty(term))
        {
            query = query.Where(r => 
                r.Name.ToLower().Contains(term.ToLower()) ||
                r.Results.Any(result => result.ProductionItem.Name.ToLower().Contains(term.ToLower()))
            );
        }

        var results = query.ToList();

        return results;
    }

    [HttpGet("{id}")]
    public ActionResult<Recipe> Get(Guid id)
    {        
        var result = _applicationContext
                        .Recipes
                        .Include(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
                        .Include(r => r.Results).ThenInclude(r => r.ProductionItem)
                        .FirstOrDefault();
        
        if (result == null)
            return new NotFoundResult();

        return result;
    }
}
