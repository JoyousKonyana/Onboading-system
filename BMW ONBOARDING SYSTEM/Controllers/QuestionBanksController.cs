using System.Collections.Generic;
using System.Linq;
using BMW_ONBOARDING_SYSTEM.Dtos;
using Microsoft.AspNetCore.Mvc;
using BMW_ONBOARDING_SYSTEM.Models;
using Microsoft.EntityFrameworkCore;

namespace BMW_ONBOARDING_SYSTEM.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class QuestionBanksController : ControllerBase
    {
        private readonly INF370DBContext _context;

        public QuestionBanksController(INF370DBContext context)
        {
            _context = context;
        }

        [HttpGet("GetAll")]
        public ActionResult<IEnumerable<GetQuestionBank>> GetQuestionBanks()
        {
            var banksInDb = _context.QuestionBank
                .Include(item => item.LessonOutcome)
                .ThenInclude(item => item.Lesson)
                .ThenInclude(item => item.Course)
                .Include(item => item.Questions)
                .ThenInclude(item => item.AnswerOptions)
                .Select(item => new GetQuestionBank()
                {
                    Id = item.Id,
                    Name = item.Name,
                    CourseId = item.LessonOutcome.Lesson.Course.CourseID,
                    CourseName = item.LessonOutcome.Lesson.Course.CourseName,
                    LessonId = item.LessonOutcome.Lesson.LessonID,
                    LessonName = item.LessonOutcome.Lesson.LessonName,
                    LessonOutcomeId = item.LessonOutcome.LessonOutcomeID,
                    LessonOutcomeName = item.LessonOutcome.LessonOutcomeName
                }).ToList();

            return banksInDb;
        }

        [HttpGet("GetAll/LessonOutcome/{lessonOutcomeId}")]
        public ActionResult<IEnumerable<GetQuestionBank>> GetQuestionBanksByLessonOutcomeId(int lessonOutcomeId)
        {
            var isLessonOutcomeInDb = _context.LessonOutcome.FirstOrDefault(item => item.LessonID == lessonOutcomeId);

            if (isLessonOutcomeInDb == null)
            {
                return BadRequest(new { message = "Lesson Outcome not found" });
            }

            var banksInDb = _context.QuestionBank
                .Where(item => item.LessonOutcomeID == isLessonOutcomeInDb.LessonOutcomeID)
                .Include(item => item.LessonOutcome)
                .ThenInclude(item => item.Lesson)
                .ThenInclude(item => item.Course)
                .Include(item => item.Questions)
                .ThenInclude(item => item.AnswerOptions)
                .Select(item => new GetQuestionBank()
                {
                    Id = item.Id,
                    Name = item.Name,
                    CourseId = item.LessonOutcome.Lesson.Course.CourseID,
                    CourseName = item.LessonOutcome.Lesson.Course.CourseName,
                    LessonId = item.LessonOutcome.Lesson.LessonID,
                    LessonName = item.LessonOutcome.Lesson.LessonName,
                    LessonOutcomeId = item.LessonOutcome.LessonOutcomeID,
                    LessonOutcomeName = item.LessonOutcome.LessonOutcomeName
                }).ToList();

            return banksInDb;
        }

        [HttpPost("Add")]
        public IActionResult AddQuestionBank(AddQuestionBankDto model)
        {
            var message = "";
            if (!ModelState.IsValid)
            {
                message = "Something went wrong on your side.";
                return BadRequest(new { message });
            }

            var isLessonOutcomeInDb = _context.LessonOutcome
                .FirstOrDefault(item => item.LessonOutcomeID == model.LessonOutcomeId);

            if (isLessonOutcomeInDb == null)
            {
                message = "Lesson outcome not found.";
                return BadRequest(new { message });
            }

            var newBank = new QuestionBank()
            {
                Name = model.Name,
                LessonOutcomeID = isLessonOutcomeInDb.LessonOutcomeID
            };
            _context.QuestionBank.Add(newBank);
            _context.SaveChanges();

            foreach (var question in model.Questions)
            {
                var newQuestion = new Question()
                {
                    QuestionBankId = newBank.Id,
                    Title = question.Name
                };
                _context.Questions.Add(newQuestion);
                _context.SaveChanges();
            }

            return Ok();
        }
    }
}
