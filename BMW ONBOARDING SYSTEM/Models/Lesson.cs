using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public partial class Lesson
    {
        public Lesson()
        {
            LessonOutcome = new HashSet<LessonOutcome>();
            QuestionBank = new HashSet<QuestionBank>();
        }

        [Key]
        [Column("LessonID")]
        public int LessonId { get; set; }
        [Column("CourseID")]
        public int? CourseId { get; set; }
        [Column("LessonCompletionStatusID")]
        public int? LessonCompletionStatusId { get; set; }
        [StringLength(50)]
        public string LessonDescription { get; set; }
        [StringLength(50)]
        public string LessonName { get; set; }

        [ForeignKey(nameof(CourseId))]
        [InverseProperty("Lesson")]
        public virtual Course Course { get; set; }
        [InverseProperty("Lesson")]
        public virtual ICollection<LessonOutcome> LessonOutcome { get; set; }

        //added for relationship
        [InverseProperty("Lesson")]
        public virtual ICollection<QuestionBank> QuestionBank { get; set; }
    }
}
