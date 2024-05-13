using FDSignalRWebUI.Dtos.MailDtos;
using MailKit.Net.Smtp;
using Microsoft.AspNetCore.Mvc;
using MimeKit;

namespace FDSignalRWebUI.Controllers
{
    public class MailController : Controller
    {
        [HttpGet]
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Index(CreateMailDto createMailDto)
        {
            MimeMessage mimeMessage = new();

            MailboxAddress mailboxAddressFrom = new("FDRestoran Rezervasyon", "Gönderen mail adresi buraya yazılacak");
            mimeMessage.From.Add(mailboxAddressFrom);

            MailboxAddress mailboxAddressTo = new("User", createMailDto.ReceiverMail);
            mimeMessage.To.Add(mailboxAddressTo);

            var messageBody = new BodyBuilder();
            messageBody.TextBody= createMailDto.Body;
            mimeMessage.Body=messageBody.ToMessageBody();

            mimeMessage.Subject=createMailDto.Subject;

            SmtpClient client = new();
            client.Connect("smtp.gmail.com", 587, false);
            client.Authenticate("Gönderen maili", "key");

            client.Send(mimeMessage);
            client.Disconnect(true);

            return RedirectToAction("Index","Dashboard");
        }
    }
}
