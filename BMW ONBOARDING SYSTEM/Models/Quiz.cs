using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public  class Quiz
    {
        [Key]
        public int QuizID { get; set; }

        
        [StringLength(255)]
        public string QuizDescription { get; set; }

        [StringLength(255)]
        public string QuizMarkRequirement { get; set; }

        public DateTime? QuizDueDate { get; set; }

        public DateTime? QuizCompletionDate { get; set; }

        //[Column("QuestionBankID")]
        //public int? QuestionBankId { get; set; }

        public int NumberOfQuestions { get; set; }

        public virtual LessonOutcome LessonOutcome { get; set; }
        public int LessonOutcomeID { get; set; }


        //[ForeignKey(nameof(QuestionBankId))]
        //[InverseProperty("Quiz")]
        //public virtual QuestionBank QuestionBank { get; set; }
    }
}
