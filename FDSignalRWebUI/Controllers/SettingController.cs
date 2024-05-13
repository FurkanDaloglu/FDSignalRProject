﻿using FDSignalREntityLayer.Entities;
using FDSignalRWebUI.Dtos.IdentityDtos;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;

namespace FDSignalRWebUI.Controllers
{
	public class SettingController : Controller
	{
		private readonly UserManager<AppUser> _userManager;

		public SettingController(UserManager<AppUser> userManager)
		{
			_userManager = userManager;
		}
		[HttpGet]
		public async Task<IActionResult> Index()
		{
			var values = await _userManager.FindByNameAsync(User.Identity.Name);
			UserEditDto userEditDto = new();
			userEditDto.Surname = values.Surname;
			userEditDto.Name = values.Name;
			userEditDto.Username = values.UserName;
			userEditDto.Mail = values.Email;
			return View(userEditDto);
		}
		[HttpPost]
        public async Task<IActionResult> Index(UserEditDto userEditDto)
		{
			if (userEditDto.Password == userEditDto.ConfirmPassword)
			{
				var user = await _userManager.FindByNameAsync(User.Identity.Name);
				user.Name = userEditDto.Name;
				user.Surname = userEditDto.Surname;
				user.Email = userEditDto.Mail;
				user.UserName = userEditDto.Username;
				user.PasswordHash = _userManager.PasswordHasher.HashPassword(user, userEditDto.Password);
				await _userManager.UpdateAsync(user);
				ViewBag.userEdit = "Bilgileriniz Güncellendi";
				return View(userEditDto);
			}
			else
				ViewBag.userEdit = "Şifrenizi yazarken bir hata yaptınız";
			return View(userEditDto);
		}

    }
}
