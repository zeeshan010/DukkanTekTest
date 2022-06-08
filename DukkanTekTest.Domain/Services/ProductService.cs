using DukkanTekTest.Domain.DTOs;
using DukkanTekTest.Domain.Entities;
using DukkanTekTest.Domain.Interfaces;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DukkanTekTest.Domain.Services
{
    public class ProductService : BaseService
    {
        public ProductService(IUnitOfWork unitOfWork) : base(unitOfWork)
        {
        }
        public async Task<bool> SellProductAsync(SellProductRequest request )
        {
                var repository = UnitOfWork.AsyncRepository<Product>();
                var product = await repository.GetAsync(x => x.ProductId == request.ProductId);
                if (product != null)
                {
                    product.QunttitySold = product.QunttitySold + request.Quantity;
                    product.QunttityInStock = product.QunttityInStock - request.Quantity;

                    await repository.UpdateAsync(product);
                    await UnitOfWork.SaveChangesAsync();
                }
          
            throw new Exception("Product not found.");
        }
        public async Task<List<GetProductsResponse>> GetProductsAsync()
        {
            var repository = UnitOfWork.AsyncRepository<Product>();
            var products = await repository.ListAsync();
            if(products != null)
            {
              return  products.Select(x => new GetProductsResponse
                {
                    ProductName = x.ProductName,
                    Barcode = x.Barcode,
                    Description = x.Description,
                    QunttityDamaged = x.QunttityDamaged,
                    QunttityInStock=x.QunttityInStock,
                    QunttitySold=x.QunttitySold
                }).ToList();
            }

            throw new Exception("Products not found.");
        }

    }
}
