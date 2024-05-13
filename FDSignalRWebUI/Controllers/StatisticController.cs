using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
    public class StatisticController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
