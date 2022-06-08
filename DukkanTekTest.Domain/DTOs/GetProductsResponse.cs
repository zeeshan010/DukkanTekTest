using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DukkanTekTest.Domain.DTOs
{
    public class GetProductsResponse
    {
        public string ProductName { get; set; }
        public string Barcode { get; set; }
        public string Description { get; set; }
        public int QunttitySold { get; set; }
        public int QunttityInStock { get; set; }
        public int QunttityDamaged { get; set; }

    }
}
