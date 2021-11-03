using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BMW_ONBOARDING_SYSTEM.Migrations
{
    public partial class RemodelCourseEntities : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateIndex("IX_Quiz_LessonOutcomeID", "Quiz", "LessonOutcomeID");
            migrationBuilder.CreateIndex("IX_LessonOutcome_LessonID", "LessonOutcome", "LessonID");
            migrationBuilder.CreateIndex("IX_Quiz_QuestionBankID", "Quiz", "QuestionBankID");
            migrationBuilder.CreateIndex("IX_Lesson_CourseID", "Lesson", "CourseID");

            migrationBuilder.DropForeignKey(
                name: "FK_Lesson_Course",
                table: "Lesson");

            migrationBuilder.DropForeignKey(
                name: "FK_LessonOutcome_Lesson",
                table: "LessonOutcome");

            migrationBuilder.DropForeignKey(
                name: "FK__Onboarder__Emplo__01142BA1",
                table: "Onboarder");

            migrationBuilder.DropForeignKey(
                name: "FK__Onboarder__Cours__02084FDA",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropForeignKey(
                name: "FK__Onboarder__Onboa__02FC7413",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropForeignKey(
                name: "FK__Onboarder__Onboa__04E4BC85",
                table: "OnboarderEquipment");

            migrationBuilder.DropForeignKey(
                name: "FK_Quiz_LessonOutcome",
                table: "Quiz");

            migrationBuilder.DropForeignKey(
                name: "FK_Quiz_QuestionBank",
                table: "Quiz");

            migrationBuilder.DropTable(
                name: "Option");

            migrationBuilder.DropTable(
                name: "Question");

            migrationBuilder.DropIndex(
                name: "IX_Quiz_QuestionBankID",
                table: "Quiz");

            migrationBuilder.DropPrimaryKey(
                name: "PK__Onboarde__2C42895D0C624168",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "QuestionBankID",
                table: "Quiz");

            migrationBuilder.AlterColumn<string>(
                name: "QuizMarkRequirement",
                table: "Quiz",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "QuizDueDate",
                table: "Quiz",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "datetime",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "QuizDescription",
                table: "Quiz",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "QuizCompletionDate",
                table: "Quiz",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "datetime",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "NumberOfQuestions",
                table: "Quiz",
                nullable: false,
                oldClrType: typeof(decimal),
                oldType: "numeric(18, 0)",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LessonOutcomeID",
                table: "Quiz",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "QuestionBankDescription",
                table: "QuestionBank",
                maxLength: 250,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(250)",
                oldUnicode: false,
                oldMaxLength: 250,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "OnboarderGraduationDate",
                table: "OnboarderCourseEnrollment",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "datetime",
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "OnboarderEnrollmentDate",
                table: "OnboarderCourseEnrollment",
                nullable: false,
                oldClrType: typeof(DateTime),
                oldType: "datetime");

            migrationBuilder.AddColumn<int>(
                name: "OnboarderCourseEnrollmentID",
                table: "OnboarderCourseEnrollment",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AlterColumn<string>(
                name: "LessonOutcomeName",
                table: "LessonOutcome",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "LessonOutcomeDescription",
                table: "LessonOutcome",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LessonID",
                table: "LessonOutcome",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "LessonDescription",
                table: "Lesson",
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LessonCompletionStatusID",
                table: "Lesson",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "CourseID",
                table: "Lesson",
                nullable: false,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "CourseName",
                table: "Course",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "CourseDueDate",
                table: "Course",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldType: "datetime",
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "CourseDescription",
                table: "Course",
                maxLength: 255,
                nullable: true,
                oldClrType: typeof(string),
                oldType: "varchar(50)",
                oldUnicode: false,
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment",
                column: "OnboarderCourseEnrollmentID");

            migrationBuilder.CreateIndex(
                name: "IX_OnboarderCourseEnrollment_OnboarderID",
                table: "OnboarderCourseEnrollment",
                column: "OnboarderID");

            migrationBuilder.AddForeignKey(
                name: "FK_Lesson_Course_CourseID",
                table: "Lesson",
                column: "CourseID",
                principalTable: "Course",
                principalColumn: "CourseID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_LessonOutcome_Lesson_LessonID",
                table: "LessonOutcome",
                column: "LessonID",
                principalTable: "Lesson",
                principalColumn: "LessonID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Onboarder_Employee_EmployeeID",
                table: "Onboarder",
                column: "EmployeeID",
                principalTable: "Employee",
                principalColumn: "EmployeeID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OnboarderCourseEnrollment_Course_CourseID",
                table: "OnboarderCourseEnrollment",
                column: "CourseID",
                principalTable: "Course",
                principalColumn: "CourseID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OnboarderCourseEnrollment_Onboarder_OnboarderID",
                table: "OnboarderCourseEnrollment",
                column: "OnboarderID",
                principalTable: "Onboarder",
                principalColumn: "OnboarderID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OnboarderEquipment_Onboarder_OnboarderID",
                table: "OnboarderEquipment",
                column: "OnboarderID",
                principalTable: "Onboarder",
                principalColumn: "OnboarderID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Quiz_LessonOutcome_LessonOutcomeID",
                table: "Quiz",
                column: "LessonOutcomeID",
                principalTable: "LessonOutcome",
                principalColumn: "LessonOutcomeID",
                onDelete: ReferentialAction.Cascade);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Lesson_Course_CourseID",
                table: "Lesson");

            migrationBuilder.DropForeignKey(
                name: "FK_LessonOutcome_Lesson_LessonID",
                table: "LessonOutcome");

            migrationBuilder.DropForeignKey(
                name: "FK_Onboarder_Employee_EmployeeID",
                table: "Onboarder");

            migrationBuilder.DropForeignKey(
                name: "FK_OnboarderCourseEnrollment_Course_CourseID",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropForeignKey(
                name: "FK_OnboarderCourseEnrollment_Onboarder_OnboarderID",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropForeignKey(
                name: "FK_OnboarderEquipment_Onboarder_OnboarderID",
                table: "OnboarderEquipment");

            migrationBuilder.DropForeignKey(
                name: "FK_Quiz_LessonOutcome_LessonOutcomeID",
                table: "Quiz");

            migrationBuilder.DropPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropIndex(
                name: "IX_OnboarderCourseEnrollment_OnboarderID",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "OnboarderCourseEnrollmentID",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.AlterColumn<string>(
                name: "QuizMarkRequirement",
                table: "Quiz",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "QuizDueDate",
                table: "Quiz",
                type: "datetime",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "QuizDescription",
                table: "Quiz",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "QuizCompletionDate",
                table: "Quiz",
                type: "datetime",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldNullable: true);

            migrationBuilder.AlterColumn<decimal>(
                name: "NumberOfQuestions",
                table: "Quiz",
                type: "numeric(18, 0)",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<int>(
                name: "LessonOutcomeID",
                table: "Quiz",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AddColumn<int>(
                name: "QuestionBankID",
                table: "Quiz",
                type: "int",
                nullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "QuestionBankDescription",
                table: "QuestionBank",
                type: "varchar(250)",
                unicode: false,
                maxLength: 250,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 250,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "OnboarderGraduationDate",
                table: "OnboarderCourseEnrollment",
                type: "datetime",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "OnboarderEnrollmentDate",
                table: "OnboarderCourseEnrollment",
                type: "datetime",
                nullable: false,
                oldClrType: typeof(DateTime));

            migrationBuilder.AlterColumn<string>(
                name: "LessonOutcomeName",
                table: "LessonOutcome",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "LessonOutcomeDescription",
                table: "LessonOutcome",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LessonID",
                table: "LessonOutcome",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<string>(
                name: "LessonDescription",
                table: "Lesson",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 50,
                oldNullable: true);

            migrationBuilder.AlterColumn<int>(
                name: "LessonCompletionStatusID",
                table: "Lesson",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<int>(
                name: "CourseID",
                table: "Lesson",
                type: "int",
                nullable: true,
                oldClrType: typeof(int));

            migrationBuilder.AlterColumn<string>(
                name: "CourseName",
                table: "Course",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AlterColumn<DateTime>(
                name: "CourseDueDate",
                table: "Course",
                type: "datetime",
                nullable: true,
                oldClrType: typeof(DateTime),
                oldNullable: true);

            migrationBuilder.AlterColumn<string>(
                name: "CourseDescription",
                table: "Course",
                type: "varchar(50)",
                unicode: false,
                maxLength: 50,
                nullable: true,
                oldClrType: typeof(string),
                oldMaxLength: 255,
                oldNullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK__Onboarde__2C42895D0C624168",
                table: "OnboarderCourseEnrollment",
                columns: new[] { "OnboarderID", "CourseID" });

            migrationBuilder.CreateTable(
                name: "Question",
                columns: table => new
                {
                    QuestionID = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    QuestionAnswer = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    QuestionBankID = table.Column<int>(type: "int", nullable: true),
                    QuestionCategoryID = table.Column<int>(type: "int", nullable: true),
                    QuestionDescription = table.Column<string>(type: "varchar(50)", unicode: false, maxLength: 50, nullable: true),
                    QuestionMarkAllocation = table.Column<decimal>(type: "numeric(18, 0)", nullable: true),
                    QuizID = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Question", x => x.QuestionID);
                    table.ForeignKey(
                        name: "FK_Question_QuestionBank",
                        column: x => x.QuestionBankID,
                        principalTable: "QuestionBank",
                        principalColumn: "QuestionBankID",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateTable(
                name: "Option",
                columns: table => new
                {
                    OptionId = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    OptionDescription = table.Column<string>(type: "varchar(100)", unicode: false, maxLength: 100, nullable: false),
                    OptionNumber = table.Column<int>(type: "int", nullable: false),
                    QuestionId = table.Column<int>(type: "int", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Option", x => x.OptionId);
                    table.ForeignKey(
                        name: "FK_Option_Question_QuestionId",
                        column: x => x.QuestionId,
                        principalTable: "Question",
                        principalColumn: "QuestionID",
                        onDelete: ReferentialAction.Cascade);
                });

            //migrationBuilder.CreateIndex(
            //    name: "IX_Quiz_QuestionBankID",
            //    table: "Quiz",
            //    column: "QuestionBankID");

            migrationBuilder.CreateIndex(
                name: "IX_Option_QuestionId",
                table: "Option",
                column: "QuestionId");

            migrationBuilder.CreateIndex(
                name: "IX_Question_QuestionBankID",
                table: "Question",
                column: "QuestionBankID");

            migrationBuilder.CreateIndex(
                name: "IX_Question_QuizID",
                table: "Question",
                column: "QuizID");

            migrationBuilder.AddForeignKey(
                name: "FK_Lesson_Course",
                table: "Lesson",
                column: "CourseID",
                principalTable: "Course",
                principalColumn: "CourseID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_LessonOutcome_Lesson",
                table: "LessonOutcome",
                column: "LessonID",
                principalTable: "Lesson",
                principalColumn: "LessonID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK__Onboarder__Emplo__01142BA1",
                table: "Onboarder",
                column: "EmployeeID",
                principalTable: "Employee",
                principalColumn: "EmployeeID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK__Onboarder__Cours__02084FDA",
                table: "OnboarderCourseEnrollment",
                column: "CourseID",
                principalTable: "Course",
                principalColumn: "CourseID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK__Onboarder__Onboa__02FC7413",
                table: "OnboarderCourseEnrollment",
                column: "OnboarderID",
                principalTable: "Onboarder",
                principalColumn: "OnboarderID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK__Onboarder__Onboa__04E4BC85",
                table: "OnboarderEquipment",
                column: "OnboarderID",
                principalTable: "Onboarder",
                principalColumn: "OnboarderID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Quiz_LessonOutcome",
                table: "Quiz",
                column: "LessonOutcomeID",
                principalTable: "LessonOutcome",
                principalColumn: "LessonOutcomeID",
                onDelete: ReferentialAction.Restrict);

            migrationBuilder.AddForeignKey(
                name: "FK_Quiz_QuestionBank",
                table: "Quiz",
                column: "QuestionBankID",
                principalTable: "QuestionBank",
                principalColumn: "QuestionBankID",
                onDelete: ReferentialAction.Restrict);
        }
    }
}
