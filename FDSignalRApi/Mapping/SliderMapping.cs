using AutoMapper;
using FDSignalRDtoLayer.SliderDto;
using FDSignalREntityLayer.Entities;

namespace SignalRApi.Mapping
{
	public class SliderMapping:Profile
	{
        public SliderMapping()
        {
            CreateMap<Slider, ResultSliderDto>().ReverseMap();
            CreateMap<Slider, CreateSliderDto>().ReverseMap();
            CreateMap<Slider, UpdateSliderDto>().ReverseMap();
        }
    }
}
