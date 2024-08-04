using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class PlaythroughController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet()]
    public ActionResult<IEnumerable<Playthrough>> Search()
    {        
        var query = _applicationContext
                        .Playthroughs
                        .Include(p => p.Factories)
                        .AsQueryable();

        var results = query.ToList();

        return results;
    }

    [HttpGet("{id}")]
    public ActionResult<Playthrough> Get(Guid id)
    {        
        var result = _applicationContext.Playthroughs
            .Where(p => p.Id == id)
            .FirstOrDefault();
        
        if (result == null)
            return new NotFoundResult();

        return result;
    }

    [HttpPost]
    public ActionResult<Playthrough> Create([FromQuery] string name)
    {
        var playthrough = new Playthrough()
        {
            Id = Guid.NewGuid(),
            Name = name
        };

        _applicationContext.Playthroughs.Add(playthrough);
        _applicationContext.SaveChanges();

        return playthrough;
    }
}
