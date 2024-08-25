using AutoMapper;
using SatisfactoryPlanner.API.Models;
using SatisfactoryPlanner.API.ResponseModels;

namespace SatisfactoryPlanner.API.Mapping;

public class MappingProfile : Profile
{
    public MappingProfile()
    {
        CreateMap<Factory, FactoryResponseModel>()
            .ForMember(dest => dest.Machines, opt => opt.MapFrom(src => src.Machines.Where(m => !PowerGeneratorTypes.Contains(m.MachineType))))
            .ForMember(dest => dest.PowerGenerators, opt => opt.MapFrom(src => src.Machines.Where(m => PowerGeneratorTypes.Contains(m.MachineType))));
        CreateMap<Factory, FactorySummaryResponseModel>();
    }

    public static MachineType[] PowerGeneratorTypes = [ MachineType.BiomassBurner, MachineType.CoalGenerator, MachineType.FuelGenerator, MachineType.NuclearPowerPlant ];
}