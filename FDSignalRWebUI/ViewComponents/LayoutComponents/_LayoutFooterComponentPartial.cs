using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.ViewComponents.LayoutComponents
{
	public class _LayoutFooterComponentPartial:ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
