using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public class QuestionBank
    {
        public int Id { get; set; }

        public string Name { get; set; }

        public virtual LessonOutcome LessonOutcome { get; set; }
        public int LessonOutcomeID { get; set; }

        public virtual List<Question> Questions { get; set; }

        public QuestionBank()
        {
            Questions = new List<Question>();
        }
    }
}
