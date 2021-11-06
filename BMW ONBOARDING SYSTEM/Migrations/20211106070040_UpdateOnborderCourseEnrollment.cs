using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace BMW_ONBOARDING_SYSTEM.Migrations
{
    public partial class UpdateOnborderCourseEnrollment : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "OnboarderCourseEnrollmentID",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "BadgeTotal",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "OnboarderEnrollmentDate",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "OnboarderGraduationDate",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.AddColumn<int>(
                name: "Id",
                table: "OnboarderCourseEnrollment",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<DateTime>(
                name: "EnrollmentDate",
                table: "OnboarderCourseEnrollment",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "GraduationDate",
                table: "OnboarderCourseEnrollment",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment",
                column: "Id");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "Id",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "EnrollmentDate",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.DropColumn(
                name: "GraduationDate",
                table: "OnboarderCourseEnrollment");

            migrationBuilder.AddColumn<int>(
                name: "OnboarderCourseEnrollmentID",
                table: "OnboarderCourseEnrollment",
                type: "int",
                nullable: false,
                defaultValue: 0)
                .Annotation("SqlServer:Identity", "1, 1");

            migrationBuilder.AddColumn<int>(
                name: "BadgeTotal",
                table: "OnboarderCourseEnrollment",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<DateTime>(
                name: "OnboarderEnrollmentDate",
                table: "OnboarderCourseEnrollment",
                type: "datetime2",
                nullable: false,
                defaultValue: new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified));

            migrationBuilder.AddColumn<DateTime>(
                name: "OnboarderGraduationDate",
                table: "OnboarderCourseEnrollment",
                type: "datetime2",
                nullable: true);

            migrationBuilder.AddPrimaryKey(
                name: "PK_OnboarderCourseEnrollment",
                table: "OnboarderCourseEnrollment",
                column: "OnboarderCourseEnrollmentID");
        }
    }
}
