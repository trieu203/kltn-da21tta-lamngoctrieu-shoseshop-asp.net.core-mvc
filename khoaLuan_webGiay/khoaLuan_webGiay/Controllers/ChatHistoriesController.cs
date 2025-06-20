﻿using khoaLuan_webGiay.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace khoaLuan_webGiay.Controllers
{
    public class ChatHistoriesController : Controller
    {
        private readonly KhoaLuanContext _context;

        public ChatHistoriesController(KhoaLuanContext context)
        {
            _context = context;
        }

        [HttpGet]
        public async Task<IActionResult> GetUserChatHistory()
        {
            var userIdClaim = User.FindFirst("UserId")?.Value;
            if (string.IsNullOrEmpty(userIdClaim))
                return RedirectToAction("Login", "Users");

            int userId = int.Parse(userIdClaim);

            var chats = await _context.ChatHistories
                .Where(c => c.UserId == userId)
                .OrderBy(c => c.SentAt)
                .Select(c => new
                {
                    c.Message,
                    c.Sender,
                    c.SentAt,
                    SenderName = c.Sender == "bot" ? "Bot" : c.User.FullName
                })
                .ToListAsync();

            return Json(chats);
        }
    }
}