using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
    public class DashboardController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
