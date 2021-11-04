using Microsoft.EntityFrameworkCore.Migrations;

namespace BMW_ONBOARDING_SYSTEM.Migrations
{
    public partial class ModelQuestions : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {

            migrationBuilder.DropPrimaryKey(
                name: "PK_QuestionBank",
                table: "QuestionBank");

            migrationBuilder.DropColumn(
                name: "QuestionBankID",
                table: "QuestionBank");


            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "QuestionBank",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<int>(
                name: "LessonOutcomeID",
                table: "QuestionBank",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<string>(
                name: "Name",
                table: "QuestionBank",
                nullable: true);

            migrationBuilder.DropColumn(
                name: "QuestionBankDescription",
                table: "QuestionBank");

            migrationBuilder.AddPrimaryKey(
                name: "PK_QuestionBank",
                table: "QuestionBank",
                column: "Id");

            migrationBuilder.CreateTable(
                name: "Questions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Title = table.Column<string>(nullable: true),
                    QuestionBankId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Questions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Questions_QuestionBank_QuestionBankId",
                        column: x => x.QuestionBankId,
                        principalTable: "QuestionBank",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateTable(
                name: "QuestionAnswerOptions",
                columns: table => new
                {
                    Id = table.Column<int>(nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    Option = table.Column<string>(nullable: true),
                    IsOptionAnswer = table.Column<bool>(nullable: false),
                    QuestionId = table.Column<int>(nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_QuestionAnswerOptions", x => x.Id);
                    table.ForeignKey(
                        name: "FK_QuestionAnswerOptions_Questions_QuestionId",
                        column: x => x.QuestionId,
                        principalTable: "Questions",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_QuestionBank_LessonOutcomeID",
                table: "QuestionBank",
                column: "LessonOutcomeID");

            migrationBuilder.CreateIndex(
                name: "IX_QuestionAnswerOptions_QuestionId",
                table: "QuestionAnswerOptions",
                column: "QuestionId");

            migrationBuilder.CreateIndex(
                name: "IX_Questions_QuestionBankId",
                table: "Questions",
                column: "QuestionBankId");

            migrationBuilder.AddForeignKey(
                name: "FK_QuestionBank_LessonOutcome_LessonOutcomeID",
                table: "QuestionBank",
                column: "LessonOutcomeID",
                principalTable: "LessonOutcome",
                principalColumn: "LessonOutcomeID",
                onDelete: ReferentialAction.Cascade);
        }



        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_QuestionBank_LessonOutcome_LessonOutcomeID",
                table: "QuestionBank");

            migrationBuilder.DropTable(
                name: "QuestionAnswerOptions");

            migrationBuilder.DropTable(
                name: "Questions");

            migrationBuilder.DropPrimaryKey(
                name: "PK_QuestionBank",
                table: "QuestionBank");

            migrationBuilder.DropIndex(
                name: "IX_QuestionBank_LessonOutcomeID",
                table: "QuestionBank");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "QuestionBank");

            migrationBuilder.DropColumn(
                name: "LessonOutcomeID",
                table: "QuestionBank");

            migrationBuilder.DropColumn(
                name: "Name",
                table: "QuestionBank");

            migrationBuilder.AddColumn<int>(
                name: "QuestionBankID",
                table: "QuestionBank",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<string>(
                name: "QuestionBankDescription",
                table: "QuestionBank",
                type: "nvarchar(250)",
                maxLength: 250,
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_QuestionBank",
                table: "QuestionBank",
                column: "QuestionBankID");
        }
    }
}
