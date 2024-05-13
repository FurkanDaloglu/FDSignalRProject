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
    public class EfFeatureDal : GenericRepository<Feature>, IFeatureDal
    {
        public EfFeatureDal(FDSignalRContext context) : base(context)
        {
        }
    }
}
