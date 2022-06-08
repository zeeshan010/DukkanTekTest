using DukkanTekTest.Domain.Base;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DukkanTekTest.Domain.Entities
{
    public class Product : BaseEntity
    {
        [Key]
        public int ProductId { get; set; }
        public string ProductName { get; set; }
        public string Barcode { get; set; }
        public string Description { get; set; }
        public int Weight { get; set; }
        public int QunttitySold { get; set; }
        public int QunttityInStock { get; set; }
        public int QunttityDamaged { get; set; }
        public int CategoryId { get; set; }
        public Category Category { get; set; }

    }
}
