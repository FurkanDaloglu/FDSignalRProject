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
    public class EfSliderDal : GenericRepository<Slider>, ISliderDal
    {
        public EfSliderDal(FDSignalRContext context) : base(context)
        {
        }
    }
}
