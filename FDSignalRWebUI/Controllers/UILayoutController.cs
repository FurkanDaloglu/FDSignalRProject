using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
    public class UILayoutController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
