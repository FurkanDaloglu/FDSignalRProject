﻿using AutoMapper;
using FDSignalRDtoLayer.ProductDto;
using FDSignalREntityLayer.Entities;

namespace SignalRApi.Mapping
{
    public class ProductMapping:Profile
    {
        public ProductMapping()
        {
            CreateMap<Product, ResultProductDto>().ReverseMap();
            CreateMap<Product, CreateProductDto>().ReverseMap();
            CreateMap<Product, UpdateProductDto>().ReverseMap();
            CreateMap<Product, GetProductDto>().ReverseMap();
            CreateMap<Product, ResultProductWithCategory>().ReverseMap();
        }
    }
}
