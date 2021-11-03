using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public  class QuestionBank
    {
        public QuestionBank()
        {
            //Question = new HashSet<Question>();
            //Quiz = new HashSet<Quiz>();
        }

        [Key]
        public int QuestionBankID { get; set; }
        [StringLength(250)]
        public string QuestionBankDescription { get; set; }

        //public virtual ICollection<Question> Question { get; set; }
        //public virtual ICollection<Quiz> Quiz { get; set; }


    }
}
