using Microsoft.AspNetCore.Mvc;
using QRCoder;
using System.Drawing;
using System.Drawing.Imaging;

namespace FDSignalRWebUI.Controllers
{
	public class QRCodeController : Controller
	{
		[HttpGet]
		public IActionResult Index()
		{
			return View();
		}
		[HttpPost]
		public IActionResult Index(string value)
		{
			using (MemoryStream stream = new())
			{
				QRCodeGenerator createQRCode = new();
				QRCodeGenerator.QRCode squeareCode = createQRCode.CreateQrCode(value, QRCodeGenerator.ECCLevel.Q);
				using (Bitmap image = squeareCode.GetGraphic(10))
				{
					image.Save(stream, ImageFormat.Png);
					ViewBag.QrCodeImage = "data:image/png;base64," + Convert.ToBase64String(stream.ToArray());
				}
			}
			return View();
		}
	}
}
