using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public partial class Question
    {
        public Question()
        {
            Option = new HashSet<Option>();
        }

        [Key]
        [Column("QuestionID")]
        public int QuestionId { get; set; }
        [Column("QuizID")]
        public int? QuizId { get; set; }
        [Column("QuestionCategoryID")]
        public int? QuestionCategoryId { get; set; }
        [StringLength(50)]
        public string QuestionDescription { get; set; }
        [StringLength(50)]
        public string QuestionAnswer { get; set; }
        [Column("QuestionBankID")]
        public int? QuestionBankId { get; set; }
        [Column(TypeName = "numeric(18, 0)")]
        public decimal? QuestionMarkAllocation { get; set; }

        [ForeignKey(nameof(QuestionBankId))]
        [InverseProperty("Question")]
        public virtual QuestionBank QuestionBank { get; set; }
        [InverseProperty("Question")]
        public virtual ICollection<Option> Option { get; set; }
    }
}
