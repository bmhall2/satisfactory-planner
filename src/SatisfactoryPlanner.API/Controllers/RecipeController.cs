using SatisfactoryPlanner.API.Database;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using AutoMapper;
using SatisfactoryPlanner.API.ResponseModels;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class RecipeController(
    ApplicationContext _applicationContext,
    IMapper _mapper) : ControllerBase
{
    [HttpGet()]
    public ActionResult<IEnumerable<RecipeResponseModel>> Search()
    {        
        var query = _applicationContext
                        .Recipes
                        .Include(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
                        .Include(r => r.Results).ThenInclude(r => r.ProductionItem)
                        .AsQueryable();

        var results = query.ToList();

        return _mapper.Map<List<RecipeResponseModel>>(results);
    }

    [HttpGet("{id}")]
    public ActionResult<RecipeResponseModel> Get(Guid id)
    {        
        var result = _applicationContext
                        .Recipes
                        .Include(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
                        .Include(r => r.Results).ThenInclude(r => r.ProductionItem)
                        .FirstOrDefault();
        
        if (result == null)
            return new NotFoundResult();

        return _mapper.Map<RecipeResponseModel>(result);
    }

    // [HttpPost]
    // public ActionResult<Factory> Create([FromQuery] Guid playthroughId, [FromQuery] string name)
    // {
    //     var factory = new Factory()
    //     {
    //         Id = Guid.NewGuid(),
    //         PlaythroughId = playthroughId,
    //         Name = name
    //     };

    //     _applicationContext.Factories.Add(factory);
    //     _applicationContext.SaveChanges();

    //     return factory;
    // }
}
