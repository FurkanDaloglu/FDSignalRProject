using FDSignalRDataAccessLayer.Abstract;
using FDSignalRDataAccessLayer.Concrete;
using FDSignalRDataAccessLayer.Repositories;
using FDSignalREntityLayer.Entities;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDSignalRDataAccessLayer.EntityFramework
{
    public class EfBasketDal : GenericRepository<Basket>, IBasketDal
    {
        public EfBasketDal(FDSignalRContext context) : base(context)
        {
        }

        public List<Basket> GetBasketByMenuTableNumber(int id)
        {
            using var context = new FDSignalRContext();
            var values=context.Baskets.Where(x=>x.MenuTableID==id).Include(y=>y.Product).ToList();
            return values;
        }
    }
}
