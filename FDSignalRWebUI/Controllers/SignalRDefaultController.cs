using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
    public class SignalRDefaultController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
