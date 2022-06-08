using DukkanTekTest.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DukkanTekTest.Domain.Services
{
    public class BaseService
    {
        protected internal IUnitOfWork UnitOfWork { get; set; }
        public BaseService(IUnitOfWork unitOfWork)
        {
            UnitOfWork = unitOfWork;
        }
    }
}
