﻿using FDSignalRDataAccessLayer.Abstract;
using FDSignalRDataAccessLayer.Concrete;
using FDSignalRDataAccessLayer.Repositories;
using FDSignalREntityLayer.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDSignalRDataAccessLayer.EntityFramework
{
    public class EfDiscountDal : GenericRepository<Discount>, IDiscountDal
    {
        public EfDiscountDal(FDSignalRContext context) : base(context)
        {
        }

        public void ChangeStatusToFalse(int id)
        {
            using var context = new FDSignalRContext();
            var value = context.Discounts.Find(id);
            value.Status = false;
            context.SaveChanges();
        }

        public void ChangeStatusToTrue(int id)
        {
            using var context = new FDSignalRContext();
            var value = context.Discounts.Find(id);
            value.Status = true;
            context.SaveChanges();
        }

        public List<Discount> GetListByStatusTrue()
        {
            using var context = new FDSignalRContext();
            var value = context.Discounts.Where(x => x.Status == true).ToList();
            return value;
        }
    }
}
