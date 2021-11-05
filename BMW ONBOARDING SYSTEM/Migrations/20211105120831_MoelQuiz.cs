using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BMW_ONBOARDING_SYSTEM.Migrations
{
    public partial class MoelQuiz : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Quiz_LessonOutcome_LessonOutcomeID",
                table: "Quiz");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Quiz",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "QuizID",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "QuizCompletionDate",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "QuizDescription",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "QuizDueDate",
                table: "Quiz");

            migrationBuilder.DropColumn(
                name: "QuizMarkRequirement",
                table: "Quiz");

            migrationBuilder.RenameTable(
                name: "Quiz",
                newName: "Quizzes");

            migrationBuilder.RenameIndex(
                name: "IX_Quiz_LessonOutcomeID",
                table: "Quizzes",
                newName: "IX_Quizzes_LessonOutcomeID");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "Quizzes",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<DateTime>(
                name: "DueDate",
                table: "Quizzes",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "Quizzes",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddColumn<int>(
                name: "PassMarkPercentage",
                table: "Quizzes",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "QuestionBankId",
                table: "Quizzes",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Quizzes",
                table: "Quizzes",
                column: "Id");

            migrationBuilder.CreateIndex(
                name: "IX_Quizzes_QuestionBankId",
                table: "Quizzes",
                column: "QuestionBankId");

            migrationBuilder.AddForeignKey(
                name: "FK_Quizzes_LessonOutcome_LessonOutcomeID",
                table: "Quizzes",
                column: "LessonOutcomeID",
                principalTable: "LessonOutcome",
                principalColumn: "LessonOutcomeID",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_Quizzes_QuestionBank_QuestionBankId",
                table: "Quizzes",
                column: "QuestionBankId",
                principalTable: "QuestionBank",
                principalColumn: "Id",
                onDelete: ReferentialAction.NoAction);
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Quizzes_LessonOutcome_LessonOutcomeID",
                table: "Quizzes");

            migrationBuilder.DropForeignKey(
                name: "FK_Quizzes_QuestionBank_QuestionBankId",
                table: "Quizzes");

            migrationBuilder.DropPrimaryKey(
                name: "PK_Quizzes",
                table: "Quizzes");

            migrationBuilder.DropIndex(
                name: "IX_Quizzes_QuestionBankId",
                table: "Quizzes");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "Quizzes");

            migrationBuilder.DropColumn(
                name: "DueDate",
                table: "Quizzes");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "Quizzes");

            migrationBuilder.DropColumn(
                name: "PassMarkPercentage",
                table: "Quizzes");

            migrationBuilder.DropColumn(
                name: "QuestionBankId",
                table: "Quizzes");

            migrationBuilder.RenameTable(
                name: "Quizzes",
                newName: "Quiz");

            migrationBuilder.RenameIndex(
                name: "IX_Quizzes_LessonOutcomeID",
                table: "Quiz",
                newName: "IX_Quiz_LessonOutcomeID");

            migrationBuilder.AddColumn<int>(
                name: "QuizID",
                table: "Quiz",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<DateTime>(
                name: "QuizCompletionDate",
                table: "Quiz",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "QuizDescription",
                table: "Quiz",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddColumn<DateTime>(
                name: "QuizDueDate",
                table: "Quiz",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "QuizMarkRequirement",
                table: "Quiz",
                type: "nvarchar(255)",
                maxLength: 255,
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_Quiz",
                table: "Quiz",
                column: "QuizID");

            migrationBuilder.AddForeignKey(
                name: "FK_Quiz_LessonOutcome_LessonOutcomeID",
                table: "Quiz",
                column: "LessonOutcomeID",
                principalTable: "LessonOutcome",
                principalColumn: "LessonOutcomeID",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
