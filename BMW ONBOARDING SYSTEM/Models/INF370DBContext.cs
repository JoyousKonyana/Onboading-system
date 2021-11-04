﻿using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Metadata.Conventions;

namespace BMW_ONBOARDING_SYSTEM.Models
{
    public partial class INF370DBContext : DbContext
    {
        public INF370DBContext()
        {
        }

        public INF370DBContext(DbContextOptions<INF370DBContext> options)
            : base(options)
        {
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer("Server=.;Database=INF 3705;Trusted_Connection=True;");
            }
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<AchievementType>(entity =>
            {
                entity.HasOne(d => d.Badge)
                    .WithMany(p => p.AchievementType)
                    .HasForeignKey(d => d.BadgeId)
                    .HasConstraintName("FK_AchievementType_Badge");
            });

            modelBuilder.Entity<ActiveLog>(entity =>
            {
                entity.Property(e => e.ActiveLogId).ValueGeneratedNever();

                entity.Property(e => e.ActiveLogDeviceIpaddress).IsUnicode(false);
            });

            modelBuilder.Entity<Address>(entity =>
            {
                entity.Property(e => e.StreetName).IsUnicode(false);
            });

            modelBuilder.Entity<ArchiveStatus>(entity =>
            {
                entity.Property(e => e.ArchieveStatusDescription).IsUnicode(false);
            });

            modelBuilder.Entity<AuditLog>(entity =>
            {
                entity.Property(e => e.AuditLogDescription).IsUnicode(false);

                entity.HasOne(d => d.User)
                    .WithMany(p => p.AuditLog)
                    .HasForeignKey(d => d.UserId)
                    .HasConstraintName("FK_AuditLog_User");
            });

            modelBuilder.Entity<Badge>(entity =>
            {
                entity.Property(e => e.BadgeDecription).IsUnicode(false);
            });

            modelBuilder.Entity<City>(entity =>
            {
                entity.Property(e => e.CityName).IsUnicode(false);
            });

            modelBuilder.Entity<Country>(entity =>
            {
                entity.Property(e => e.CountryName).IsUnicode(false);
            });

            //modelBuilder.Entity<Course>(entity =>
            //{
            //    entity.Property(e => e.CourseDescription).IsUnicode(false);

            //    entity.Property(e => e.CourseName).IsUnicode(false);
            //});

            modelBuilder.Entity<CourseCompletionStatus>(entity =>
            {
                entity.HasNoKey();

                entity.Property(e => e.CourseCompletionStatusDescription).IsUnicode(false);

                entity.Property(e => e.CourseCopletionStatusId).ValueGeneratedOnAdd();
            });

            modelBuilder.Entity<Department>(entity =>
            {
                entity.Property(e => e.DepartmentDescription).IsUnicode(false);
            });

            modelBuilder.Entity<Employee>(entity =>
            {
                entity.HasIndex(e => e.TitleId);

                entity.Property(e => e.EmailAddress).IsUnicode(false);

                entity.Property(e => e.EmployeeJobTitle).IsUnicode(false);

                entity.Property(e => e.FirstName).IsUnicode(false);

                entity.Property(e => e.LastName).IsUnicode(false);

                entity.Property(e => e.MiddleName).IsUnicode(false);

                entity.HasOne(d => d.Department)
                    .WithMany(p => p.Employee)
                    .HasForeignKey(d => d.DepartmentId)
                    .HasConstraintName("FK_Employee_Department");
            });

            modelBuilder.Entity<EmployeeCalendar>(entity =>
            {
                entity.Property(e => e.EmployeeCalendarLink).IsUnicode(false);
            });

            modelBuilder.Entity<Equipment>(entity =>
            {
                entity.HasIndex(e => e.EquipmentBrandId);

                entity.HasIndex(e => e.EquipmentTypeId);
            });

            modelBuilder.Entity<EquipmentBrand>(entity =>
            {
                entity.Property(e => e.EquipmentBrandName).IsUnicode(false);
            });

            modelBuilder.Entity<EquipmentQuery>(entity =>
            {
                entity.Property(e => e.EquipmentQueryDescription).IsUnicode(false);
            });

            modelBuilder.Entity<EquipmentTradeInStatus>(entity =>
            {
                entity.Property(e => e.EquipmentTradeInStatusDescription).IsUnicode(false);
            });

            modelBuilder.Entity<EquipmentType>(entity =>
            {
                entity.Property(e => e.EquipmentTypeDescription).IsUnicode(false);
            });

            modelBuilder.Entity<Faq>(entity =>
            {
                entity.Property(e => e.Faqanswer).IsUnicode(false);

                entity.Property(e => e.Faqdescription).IsUnicode(false);
            });

            modelBuilder.Entity<Gender>(entity =>
            {
                entity.Property(e => e.GenderDescription).IsUnicode(false);
            });

            //modelBuilder.Entity<Lesson>(entity =>
            //{
            //    entity.Property(e => e.LessonDescription).IsUnicode(false);

            //    entity.HasOne(d => d.Course)
            //        .WithMany(p => p.Lessons)
            //        .HasForeignKey(d => d.CourseID)
            //        .HasConstraintName("FK_Lesson_Course");
            //});

            modelBuilder.Entity<LessonCompletionStatus>(entity =>
            {
                entity.Property(e => e.LessonCompletionStatusDescription).IsUnicode(false);
            });

            modelBuilder.Entity<LessonContent>(entity =>
            {
                entity.HasIndex(e => e.ArchiveStatusId);

                entity.HasIndex(e => e.LessonContentTypeId);

                entity.Property(e => e.LessonContent1).IsUnicode(false);

                entity.Property(e => e.LessonContentDescription).IsUnicode(false);
            });

            modelBuilder.Entity<LessonContentType>(entity =>
            {
                entity.Property(e => e.LessonContentDescription).IsUnicode(false);
            });

            //modelBuilder.Entity<LessonOutcome>(entity =>
            //{
            //    entity.Property(e => e.LessonOutcomeDescription).IsUnicode(false);

            //    entity.Property(e => e.LessonOutcomeName).IsUnicode(false);

            //    entity.HasOne(d => d.Lesson)
            //        .WithMany(p => p.LessonOutcomes)
            //        .HasForeignKey(d => d.Quizzes)
            //        .HasConstraintName("FK_LessonOutcome_Lesson");
            //});

            modelBuilder.Entity<Notification>(entity =>
            {
                entity.Property(e => e.NotificationMessageDescription).IsUnicode(false);
            });

            //modelBuilder.Entity<Onboarder>(entity =>
            //{
            //    entity.HasOne(d => d.Employee)
            //        .WithMany(p => p.Onboarder)
            //        .HasForeignKey(d => d.EmployeeID)
            //        .OnDelete(DeleteBehavior.ClientSetNull)
            //        .HasConstraintName("FK__Onboarder__Emplo__01142BA1");
            //});

            //modelBuilder.Entity<OnboarderCourseEnrollment>(entity =>
            //{
            //    entity.HasKey(e => new { e.OnboarderID, e.CourseID })
            //        .HasName("PK__Onboarde__2C42895D0C624168");

            //    entity.HasOne(d => d.Course)
            //        .WithMany(p => p.OnBoarders)
            //        .HasForeignKey(d => d.CourseID)
            //        .OnDelete(DeleteBehavior.ClientSetNull)
            //        .HasConstraintName("FK__Onboarder__Cours__02084FDA");

            //    entity.HasOne(d => d.Onboarder)
            //        .WithMany(p => p.Courses)
            //        .HasForeignKey(d => d.OnboarderID)
            //        .OnDelete(DeleteBehavior.ClientSetNull)
            //        .HasConstraintName("FK__Onboarder__Onboa__02FC7413");
            //});

            modelBuilder.Entity<OnboarderEquipment>(entity =>
            {
                entity.HasKey(e => new { e.EquipmentId, e.OnboarderID })
                    .HasName("PK__Onboarde__704A407D484BC86A");

                entity.Property(e => e.EquipmentCheckInCondition).IsUnicode(false);

                entity.HasOne(d => d.Equipment)
                    .WithMany(p => p.OnboarderEquipment)
                    .HasForeignKey(d => d.EquipmentId)
                    .OnDelete(DeleteBehavior.ClientSetNull)
                    .HasConstraintName("FK__Onboarder__Equip__03F0984C");

                //entity.HasOne(d => d.)
                //    .WithMany(p => p.OnboarderEquipment)
                //    .HasForeignKey(d => d.Onboarder)
                //    .OnDelete(DeleteBehavior.ClientSetNull)
                //    .HasConstraintName("FK__Onboarder__Onboa__04E4BC85");
            });

            //modelBuilder.Entity<Option>(entity =>
            //{
            //    entity.HasIndex(e => e.QuestionId);

            //    entity.Property(e => e.OptionDescription).IsUnicode(false);
            //});

            modelBuilder.Entity<Otp>(entity =>
            {
                entity.Property(e => e.OtpValue).IsUnicode(false);
            });

            modelBuilder.Entity<PostalCode>(entity =>
            {
                entity.Property(e => e.PostalCode1).IsUnicode(false);
            });

            modelBuilder.Entity<Province>(entity =>
            {
                entity.Property(e => e.ProvinceName).IsUnicode(false);
            });

            modelBuilder.Entity<QueryStatus>(entity =>
            {
                entity.Property(e => e.EquipmentQueryDescription).IsUnicode(false);
            });

            //modelBuilder.Entity<Question>(entity =>
            //{
            //    entity.HasIndex(e => e.QuizId);

            //    entity.Property(e => e.QuestionAnswer).IsUnicode(false);

            //    entity.Property(e => e.QuestionDescription).IsUnicode(false);

            //    entity.HasOne(d => d.QuestionBank)
            //        .WithMany(p => p.Question)
            //        .HasForeignKey(d => d.QuestionBankId)
            //        .HasConstraintName("FK_Question_QuestionBank");
            //});

            //modelBuilder.Entity<QuestionBank>(entity =>
            //{
            //    entity.Property(e => e.QuestionBankDescription).IsUnicode(false);
            //});

            modelBuilder.Entity<QuestionCategory>(entity =>
            {
                entity.Property(e => e.QuestionCategoryDescription).IsUnicode(false);
            });

            //modelBuilder.Entity<Quiz>(entity =>
            //{
            //    entity.Property(e => e.QuizDescription).IsUnicode(false);

            //    entity.Property(e => e.QuizMarkRequirement).IsUnicode(false);

            //    entity.HasOne(d => d.LessonOutcome)
            //        .WithMany(p => p.Quizzes)
            //        .HasForeignKey(d => d.LessonOutcomeID)
            //        .HasConstraintName("FK_Quiz_LessonOutcome");

            //    entity.HasOne(d => d.LessonOutcome)
            //        .WithMany(p => p.Quizzes)
            //        .HasForeignKey(d => d.LessonOutcomeID)
            //        .HasConstraintName("FK_Quiz_QuestionBank");
            //});

            modelBuilder.Entity<Suburb>(entity =>
            {
                entity.Property(e => e.SuburbName).IsUnicode(false);
            });

            modelBuilder.Entity<Title>(entity =>
            {
                entity.Property(e => e.TitleDescription).IsUnicode(false);
            });

            modelBuilder.Entity<User>(entity =>
            {
                entity.Property(e => e.Password).IsUnicode(false);

                entity.Property(e => e.Username).IsUnicode(false);

                entity.HasOne(d => d.UserRole)
                    .WithMany(p => p.User)
                    .HasForeignKey(d => d.UserRoleId)
                    .HasConstraintName("FK_User_UserRole");
            });

            modelBuilder.Entity<UserRole>(entity =>
            {
                entity.Property(e => e.UserRoleDescription).IsUnicode(false);

                entity.Property(e => e.UserRoleName).IsUnicode(false);
            });

            OnModelCreatingPartial(modelBuilder);


        }

        partial void OnModelCreatingPartial(ModelBuilder modelBuilder);

        public virtual DbSet<Achievement> Achievement { get; set; }
        public virtual DbSet<AchievementType> AchievementType { get; set; }
        public virtual DbSet<ActiveLog> ActiveLog { get; set; }
        public virtual DbSet<Address> Address { get; set; }
        public virtual DbSet<ArchiveStatus> ArchiveStatus { get; set; }
        public virtual DbSet<AuditLog> AuditLog { get; set; }
        public virtual DbSet<Badge> Badge { get; set; }
        public virtual DbSet<City> City { get; set; }
        public virtual DbSet<Country> Country { get; set; }
        public virtual DbSet<Course> Course { get; set; }
        public virtual DbSet<CourseCompletionStatus> CourseCompletionStatus { get; set; }
        public virtual DbSet<Department> Department { get; set; }
        public virtual DbSet<Employee> Employee { get; set; }
        public virtual DbSet<EmployeeCalendar> EmployeeCalendar { get; set; }
        public virtual DbSet<Equipment> Equipment { get; set; }
        public virtual DbSet<EquipmentBrand> EquipmentBrand { get; set; }
        public virtual DbSet<EquipmentQuery> EquipmentQuery { get; set; }
        public virtual DbSet<EquipmentQueryStatus> EquipmentQueryStatus { get; set; }
        public virtual DbSet<EquipmentTradeInStatus> EquipmentTradeInStatus { get; set; }
        public virtual DbSet<EquipmentType> EquipmentType { get; set; }
        public virtual DbSet<Faq> Faq { get; set; }
        public virtual DbSet<Gender> Gender { get; set; }
        public virtual DbSet<Lesson> Lesson { get; set; }
        public virtual DbSet<LessonCompletionStatus> LessonCompletionStatus { get; set; }
        public virtual DbSet<LessonContent> LessonContent { get; set; }
        public virtual DbSet<LessonContentType> LessonContentType { get; set; }
        public virtual DbSet<LessonOutcome> LessonOutcome { get; set; }
        public virtual DbSet<Notification> Notification { get; set; }
        public virtual DbSet<Onboarder> Onboarder { get; set; }
        public virtual DbSet<OnboarderCourseEnrollment> OnboarderCourseEnrollment { get; set; }
        public virtual DbSet<OnboarderEquipment> OnboarderEquipment { get; set; }
        public virtual DbSet<Otp> Otp { get; set; }
        public virtual DbSet<PostalCode> PostalCode { get; set; }
        public virtual DbSet<Province> Province { get; set; }
        public virtual DbSet<QueryStatus> QueryStatus { get; set; }
        public virtual DbSet<QuestionBank> QuestionBank { get; set; }
        public virtual DbSet<QuestionCategory> QuestionCategory { get; set; }
        public virtual DbSet<Quiz> Quiz { get; set; }
        public virtual DbSet<Suburb> Suburb { get; set; }
        public virtual DbSet<Title> Title { get; set; }
        public virtual DbSet<User> User { get; set; }
        public virtual DbSet<UserRole> UserRole { get; set; }

        public DbSet<Question> Questions { get; set; }
        public DbSet<QuestionAnswerOption> QuestionAnswerOptions { get; set; }


    }
}
