using FDSignalRDataAccessLayer.Abstract;
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
    public class EfCategoryDal : GenericRepository<Category>, ICategoryDal
    {
        public EfCategoryDal(FDSignalRContext context) : base(context)
        {
        }

        public int ActiveCategoryCount()
        {
            using var context = new FDSignalRContext();
            return context.Categories.Where(x => x.CategoryStatus == true).Count();
        }

        public int CategoryCount()
        {
            using var context=new FDSignalRContext();
            return context.Categories.Count();
        }

        public int PassiveCategoryCount()
        {
            using var context = new FDSignalRContext();
            return context.Categories.Where(x => x.CategoryStatus == false).Count();
        }
    }
}
