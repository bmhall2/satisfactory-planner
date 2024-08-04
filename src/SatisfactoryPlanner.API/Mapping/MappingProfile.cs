using AutoMapper;
using SatisfactoryPlanner.API.Models;
using SatisfactoryPlanner.API.ResponseModels;

namespace SatisfactoryPlanner.API.Mapping;

public class MappingProfile : Profile
{
    public MappingProfile()
    {
        CreateMap<Factory, FactorySummaryResponseModel>();
    }
}