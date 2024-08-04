using AutoMapper;
using SatisfactoryPlanner.API.Models;
using SatisfactoryPlanner.API.ResponseModels;

namespace SatisfactoryPlanner.API.Mapping;

public class MappingProfile : Profile
{
    public MappingProfile()
    {
        CreateMap<Factory, FactoryResponseModel>();
        CreateMap<Factory, FactorySummaryResponseModel>();

        CreateMap<Machine, MachineResponseModel>();
        CreateMap<Machine, MachineSummaryResponseModel>();

        CreateMap<Recipe, RecipeResponseModel>();
        CreateMap<Recipe, RecipeSummaryResponseModel>();

        CreateMap<RecipeIngredient, RecipeIngredientResponseModel>();

        CreateMap<RecipeResult, RecipeResultResponseModel>();

        CreateMap<ProductionItem, ProductionItemResponseModel>();
        CreateMap<ProductionItem, ProductionItemSummaryResponseModel>();
    }
}