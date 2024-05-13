using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.ViewComponents.LayoutComponents
{
	public class _LayoutHeaderPartialComponent:ViewComponent
    {
        public IViewComponentResult Invoke()
        {
            return View();
        }
    }
}
