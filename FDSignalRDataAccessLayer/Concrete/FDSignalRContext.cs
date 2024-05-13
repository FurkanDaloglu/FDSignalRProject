﻿using FDSignalREntityLayer.Entities;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDSignalRDataAccessLayer.Concrete
{
    public class FDSignalRContext:IdentityDbContext<AppUser,AppRole,int>
    {
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer("server=LAPTOP-7DCEO2K6\\SQLEXPRESS01; database=DbFDSignalRProject; integrated security=true;TrustServerCertificate=true");
        }
        public DbSet<About> Abouts { get; set; }
        public DbSet<Booking> Bookings  { get; set; }
        public DbSet<Category> Categories  { get; set; }
        public DbSet<Contact> Contacts  { get; set; }
        public DbSet<Discount> Discounts  { get; set; }
        public DbSet<Feature> Features  { get; set; }
        public DbSet<Product> Products  { get; set; }
        public DbSet<SocialMedia> SocialMedias  { get; set; }
        public DbSet<Testimonial> Testimonials  { get; set; }
        public DbSet<Order> Orders  { get; set; }
        public DbSet<OrderDetail> OrderDetails  { get; set; }
        public DbSet<MoneyCase> MoneyCases  { get; set; }
        public DbSet<MenuTable> MenuTables  { get; set; }
        public DbSet<Slider> Sliders { get; set; }
        public DbSet<Basket> Baskets { get; set; }
        public DbSet<Notification> Notifications { get; set; }
        public DbSet<Message> Messages { get; set; }
    }
}