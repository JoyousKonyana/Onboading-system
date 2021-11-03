using System;
using System.ComponentModel.DataAnnotations;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public class OnboarderCourseEnrollment
    {
        [Key]
        public int OnboarderCourseEnrollmentID { get; set; }

        public DateTime OnboarderEnrollmentDate { get; set; }
        public DateTime? OnboarderGraduationDate { get; set; }

        public int BadgeTotal { get; set; }

        public virtual Course Course { get; set; }
        public int CourseID { get; set; }

        public virtual Onboarder Onboarder { get; set; }
        public int OnboarderID { get; set; }
    }
}
