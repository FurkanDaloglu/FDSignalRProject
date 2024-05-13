using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.ViewComponents.LayoutComponents
{
	public class _LayoutScriptComponentPartial:ViewComponent
	{
		public IViewComponentResult Invoke()
		{
			return View();
		}
	}
}
