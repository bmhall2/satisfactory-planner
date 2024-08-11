using SatisfactoryPlanner.API.Database;
using SatisfactoryPlanner.API.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace SatisfactoryPlanner.API.Controllers;

[ApiController]
[Route("api/[controller]")]
public class MachineController(
    ApplicationContext _applicationContext) : ControllerBase
{
    [HttpGet("{id}")]
    public ActionResult<Machine> Get(Guid id)
    {        
        var machine = _applicationContext.Machines
            .Where(p => p.Id == id)
            .Include(m => m.Recipe).ThenInclude(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
            .Include(m => m.Recipe).ThenInclude(r => r.Results).ThenInclude(r => r.ProductionItem)
            .FirstOrDefault();
        
        if (machine == null)
            return new NotFoundResult();

        return machine;
    }

    [HttpPost]
    public ActionResult<Machine> Create(
        [FromQuery] Guid factoryId,
        [FromQuery] MachineType machineType,
        [FromQuery] Guid recipeId,
        [FromQuery] decimal clockSpeed)
    {
        var recipe = _applicationContext.Recipes.Where(r => r.Id == recipeId).FirstOrDefault();
        if (recipe is null)
        {
            return new NotFoundResult();
        }

        var machine = new Machine()
        {
            Id = Guid.NewGuid(),
            FactoryId = factoryId,
            MachineType = machineType,
            RecipeId = recipeId,
            Recipe = recipe,
            ClockSpeed = clockSpeed
        };

        _applicationContext.Machines.Add(machine);
        _applicationContext.SaveChanges();

        return machine;
    }

    [HttpPut("{id}")]
    public ActionResult<Machine> Update(
        Guid id,
        [FromQuery] Guid recipeId,
        [FromQuery] decimal clockSpeed)
    {
        var machine = _applicationContext.Machines
                        .Where(m => m.Id == id)
                        .Include(m => m.Recipe).ThenInclude(r => r.Ingredients).ThenInclude(i => i.ProductionItem)
                        .Include(m => m.Recipe).ThenInclude(r => r.Results).ThenInclude(r => r.ProductionItem).SingleOrDefault();
        
        if (machine is null)
        {
            return new NotFoundResult();
        }

        var recipe = _applicationContext.Recipes.Where(r => r.Id == recipeId).SingleOrDefault();
        if (recipe is null)
        {
            return new NotFoundResult();
        }

        machine.RecipeId = recipeId;
        machine.Recipe = recipe;
        machine.ClockSpeed = clockSpeed;

        _applicationContext.SaveChanges();

        return machine;
    }

    [HttpDelete("{id}")]
    public ActionResult Delete(Guid id)
    {
        var machine = _applicationContext.Machines.Where(m => m.Id == id).SingleOrDefault();
        if (machine is null)
        {
            return new NotFoundResult();
        }

        _applicationContext.Remove(machine);
        _applicationContext.SaveChanges();

        return Ok();
    }
}
