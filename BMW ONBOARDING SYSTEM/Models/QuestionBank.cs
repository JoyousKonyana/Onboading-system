using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public partial class QuestionBank
    {
        public QuestionBank()
        {
            Question = new HashSet<Question>();
            Quiz = new HashSet<Quiz>();
        }

        [Key]
        [Column("QuestionBankID")]
        public int QuestionBankId { get; set; }
        [StringLength(250)]
        public string QuestionBankDescription { get; set; }

        [InverseProperty("QuestionBank")]
        public virtual ICollection<Question> Question { get; set; }
        [InverseProperty("QuestionBank")]
        public virtual ICollection<Quiz> Quiz { get; set; }
    }
}
