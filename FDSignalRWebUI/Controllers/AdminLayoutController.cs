﻿using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
    public class AdminLayoutController : Controller
    {
        public IActionResult Index()
        {
            return View();
        }
    }
}
