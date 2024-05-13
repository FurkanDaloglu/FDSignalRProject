using FDSignalREntityLayer.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FDSignalRBusinessLayer.Abstract
{
    public interface ITestimonialService:IGenericService<Testimonial>
    {
        void TChangeStatusToTrue(int id);
        void TChangeStatusToFalse(int id);
    }
}
