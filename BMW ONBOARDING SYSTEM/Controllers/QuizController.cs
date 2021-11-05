using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using BMW_ONBOARDING_SYSTEM.Dtos;
using BMW_ONBOARDING_SYSTEM.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Microsoft.Exchange.WebServices.Data;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace BMW_ONBOARDING_SYSTEM.Controllers
{
    [Route("api/[controller]")]
    public class QuizController : Controller
    {
        private readonly INF370DBContext _context;

        public QuizController(
            INF370DBContext context
            )
        {

            _context = context;
        }

        [HttpPost("Add")]
        public IActionResult AddLessonOutcomeQuiz( [FromBody]AddLessonOutcomeQuizDto model)
        {
            var message = "";
            if (!ModelState.IsValid)
            {
                message = "Something went wrong on your side.";
                return BadRequest(new { message });
            }

            var isBankInDb = _context.QuestionBank
                .FirstOrDefault(item => item.Id == model.QuestionBankId);

            if (isBankInDb == null)
            {
                message = "Question bank not found";
                return BadRequest(new { message });
            }

            var isOutcomeInDb = _context.LessonOutcome
                .FirstOrDefault(item => item.LessonOutcomeID == Convert.ToInt32(model.OutcomeId));

            if (isOutcomeInDb == null)
            {
                message = "Lesson Outcome not found";
                return BadRequest(new { message });
            }

            var newQuiz = new Quiz()
            {
                Name = model.Name,
                LessonOutcomeID = isOutcomeInDb.LessonOutcomeID,
                QuestionBankId = isBankInDb.Id,
                NumberOfQuestions = model.NumberOfQuestions,
                PassMarkPercentage = model.PassMarkPercentage,
                DueDate = model.DueDate
            };

            _context.Quizzes.Add(newQuiz);
            _context.SaveChanges();

            return Ok();

        }

        [HttpGet("GetAll")]
        public ActionResult<IEnumerable<GetLessonOutcomeQuizDto>> GetAllLessonOutcomeQuizzes()
        {
            var quizzesInDb = _context.Quizzes
                .Include(item => item.LessonOutcome)
                .Include(item => item.QuestionBank)
                .Select(item => new GetLessonOutcomeQuizDto
                {
                    Id = item.Id,
                    Name = item.Name,
                    DueDate = item.DueDate.ToString("dd/MM/yyyy"),
                    PassMarkPercentage = item.PassMarkPercentage,
                    NumberOfQuestions = item.NumberOfQuestions,
                    QuestionBankId = item.QuestionBank.Id,
                    QuestionBankName = item.QuestionBank.Name,
                    LessonOutcomeId = item.LessonOutcome.LessonOutcomeID,
                    LessonOutcomeName = item.LessonOutcome.LessonOutcomeName
                }).ToList();

            return quizzesInDb;
        }

        [HttpGet("GetAll/LessonOutcome/{lessonOutcomeId}")]
        public ActionResult<IEnumerable<GetLessonOutcomeQuizDto>> GetAllLessonOutcomeQuizzes(int lessonOutcomeId)
        {
            var isOutcomeInDb = _context.LessonOutcome
                .FirstOrDefault(item => item.LessonOutcomeID == lessonOutcomeId);

            if (isOutcomeInDb == null)
            {
                var message = "Lesson Outcome not found";
                return BadRequest(new { message });
            }

            var quizzesInDb = _context.Quizzes
                .Where(item => item.LessonOutcomeID == isOutcomeInDb.LessonOutcomeID)
                .Include(item => item.LessonOutcome)
                .Include(item => item.QuestionBank)
                .Select(item => new GetLessonOutcomeQuizDto
                {
                    Id = item.Id,
                    Name = item.Name,
                    DueDate = item.DueDate.ToString("dd/MM/yyyy"),
                    PassMarkPercentage = item.PassMarkPercentage,
                    NumberOfQuestions = item.NumberOfQuestions,
                    QuestionBankId = item.QuestionBank.Id,
                    QuestionBankName = item.QuestionBank.Name,
                    LessonOutcomeId = item.LessonOutcome.LessonOutcomeID,
                    LessonOutcomeName = item.LessonOutcome.LessonOutcomeName
                }).ToList();

            return quizzesInDb;
        }
    }
}
