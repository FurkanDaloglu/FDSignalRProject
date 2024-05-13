using FDSignalRWebUI.Dtos.CategoryDtos;
using FDSignalRWebUI.Dtos.ProductDtos;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Newtonsoft.Json;
using System.Text;

namespace FDSignalRWebUI.Controllers
{
    public class ProductController : Controller
    {
        private readonly IHttpClientFactory _httpClientFactory;

        public ProductController(IHttpClientFactory httpClientFactory)
        {
            _httpClientFactory = httpClientFactory;
        }

        public async Task<IActionResult> Index()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("https://localhost:7128/api/Product/ProductListWithCategory\r\n");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<List<ResultProductDto>>(jsonData);
                return View(values);
            }
            return View();
        }
        private async Task<List<SelectListItem>> GetCategoryOptions()
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync("https://localhost:7128/api/Category");
            var jsonData = await responseMessage.Content.ReadAsStringAsync();
            var values = JsonConvert.DeserializeObject<List<ResultCategoryDto>>(jsonData);
            List<SelectListItem> categoryOptions = new();
            categoryOptions.Add(new SelectListItem { Text = "Seçiniz", Value = "", Disabled = true, Selected = true });
            categoryOptions.AddRange
            (from x in values
             select new SelectListItem
             {
                 Text = x.CategoryName,
                 Value = x.CategoryID.ToString()
             });
            return categoryOptions;
        }
        [HttpGet]
        public async Task<IActionResult> CreateProduct()
        {
            var categoryOptions=await GetCategoryOptions();
            ViewBag.v = categoryOptions;
            //List<SelectListItem> values2 = (from x in values
            //                                select new SelectListItem
            //                                {
            //                                    Text = x.CategoryName,
            //                                    Value = x.CategoryID.ToString()
            //                                }).ToList();
            //ViewBag.v = values2;
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> CreateProduct(CreateProductDto createProductDto)
        {
            createProductDto.ProductStatus = true;
            var client = _httpClientFactory.CreateClient();
            var jsonData = JsonConvert.SerializeObject(createProductDto);
            StringContent stringContent = new(jsonData, Encoding.UTF8, "application/json");
            var responseMessage = await client.PostAsync("https://localhost:7128/api/Product\r\n", stringContent);
            if (responseMessage.IsSuccessStatusCode)
            {
                if(ModelState.IsValid)
                {
                    if(createProductDto.CategoryID==0)
                    {
                        ModelState.AddModelError("CategoryID", "Lütfen bir kategori seçin.");
                        return View(createProductDto);
                    }
                }
                return RedirectToAction("Index");
            }
            var categoryOptions = await GetCategoryOptions();
            ViewBag.v = categoryOptions;
            return View();
        }
        public async Task<IActionResult> DeleteProduct(int id)
        {
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.DeleteAsync($"https://localhost:7128/api/Product/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View();
        }
        [HttpGet]
        public async Task<IActionResult> UpdateProduct(int id)
        {
            var categoryOptions = await GetCategoryOptions();
            ViewBag.v = categoryOptions;
            var client = _httpClientFactory.CreateClient();
            var responseMessage = await client.GetAsync($"https://localhost:7128/api/Product/{id}");
            if (responseMessage.IsSuccessStatusCode)
            {
                var jsonData = await responseMessage.Content.ReadAsStringAsync();
                var values = JsonConvert.DeserializeObject<UpdateProductDto>(jsonData);
                return View(values);
            }
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> UpdateProduct(UpdateProductDto updateProductDto)
        {
            var client = _httpClientFactory.CreateClient();
            var jsonData = JsonConvert.SerializeObject(updateProductDto);
            StringContent stringContent = new(jsonData, Encoding.UTF8, "application/json");
            var responseMessage = await client.PutAsync("https://localhost:7128/api/Product", stringContent);
            if (responseMessage.IsSuccessStatusCode)
            {
                return RedirectToAction("Index");
            }
            return View();
        }
    }
}
