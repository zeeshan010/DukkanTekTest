using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DukkanTekTest.Domain.DTOs
{
    public class UpdateProductRequest
    {
        public int ProductId { get; set; }   
        public int Quantity { get; set; }
    }
}
