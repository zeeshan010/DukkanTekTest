using DukkanTekTest.Domain.DTOs;
using DukkanTekTest.Domain.Services;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;

namespace DukkanTekTest.API.Controllers
{
    
    [ApiController]
    public class ProductsController : ControllerBase
    {
        private readonly ProductService _service;
        private readonly ILogger<ProductsController> _logger;

        public ProductsController(ILogger<ProductsController> logger, ProductService service)
        {
            _service = service;
            _logger = logger;
        }

        [HttpPost]
        [Route("api/SellProduct")]
        public async Task<IActionResult> SellProduct([FromBody] SellProductRequest request)
        {
            var resp = await _service.SellProductAsync(request);
            return Ok(resp);
        }

        [HttpGet]
        [Route("api/GetProducts")]
        public async Task<IActionResult> GetProducts()
        {
            var resp = await _service.GetProductsAsync();
            return Ok(resp);
        }

    }
}
