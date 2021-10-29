USE [master]
GO

USE [INF 3705]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 10/29/2021 9:40:53 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Achievement]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievement](
	[AchievementID] [int] IDENTITY(1,1) NOT NULL,
	[AchievementDate] [datetime] NULL,
	[AchievementTypeID] [int] NULL,
	[OnboarderID] [int] NULL,
	[CourseID] [int] NULL,
	[QuizID] [int] NULL,
	[MarkAchieved] [decimal](18, 0) NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[AchievementID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AchievementType]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AchievementType](
	[AchievementTypeID] [int] IDENTITY(1,1) NOT NULL,
	[AchievementTypeDescription] [nvarchar](50) NULL,
	[BadgeID] [int] NULL,
 CONSTRAINT [PK_AchievementType] PRIMARY KEY CLUSTERED 
(
	[AchievementTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ActiveLog]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ActiveLog](
	[ActiveLogID] [int] NOT NULL,
	[UserID] [int] NULL,
	[ActiveLogDeviceIPAddress] [varchar](50) NULL,
	[ActiveLogLoginTimestamp] [datetime] NULL,
	[ActiveLogLoginLastActiveTimestamp] [datetime] NULL,
 CONSTRAINT [PK_ActiveLog] PRIMARY KEY CLUSTERED 
(
	[ActiveLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT NULL,
	[SuburbID] [int] NULL,
	[ProvinceID] [int] NULL,
	[CityID] [int] NULL,
	[CountryID] [int] NULL,
	[StreetNumber] [nvarchar](max) NULL,
	[StreetName] [varchar](50) NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ArchiveStatus]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ArchiveStatus](
	[ArchiveStatusID] [int] IDENTITY(1,1) NOT NULL,
	[ArchieveStatusDescription] [varchar](50) NULL,
 CONSTRAINT [PK_ArchiveStatus] PRIMARY KEY CLUSTERED 
(
	[ArchiveStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AuditLog]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AuditLog](
	[AuditLogID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[AuditLogDatestamp] [date] NULL,
	[AuditLogTimestamp] [time](7) NULL,
	[AuditLogDescription] [varchar](50) NULL,
 CONSTRAINT [PK_AuditLog] PRIMARY KEY CLUSTERED 
(
	[AuditLogID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Badge]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Badge](
	[BadgeID] [int] IDENTITY(1,1) NOT NULL,
	[BadgeDecription] [varchar](50) NULL,
 CONSTRAINT [PK_Badge] PRIMARY KEY CLUSTERED 
(
	[BadgeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[City]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[Country] [varchar](50) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryID] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [varchar](50) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[CountryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CourseDescription] [varchar](50) NULL,
	[CourseDueDate] [datetime] NULL,
	[CourseName] [varchar](50) NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CourseCompletionStatus]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseCompletionStatus](
	[CourseCopletionStatusID] [int] IDENTITY(1,1) NOT NULL,
	[OnboarderID] [int] NULL,
	[CourseID] [int] NULL,
	[CourseCompletionStatusDescription] [varchar](50) NULL,
	[CourseCompletionStatusDate] [date] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepatmentID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentDescription] [varchar](50) NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DepatmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NULL,
	[GenderID] [int] NULL,
	[AddressID] [int] NULL,
	[EmployeeCalendarID] [int] NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[MiddleName] [varchar](50) NULL,
	[IDNumber] [numeric](18, 0) NULL,
	[EmailAddress] [varchar](50) NULL,
	[ContactNumber] [numeric](18, 0) NULL,
	[EmployeeJobTitle] [varchar](50) NULL,
	[TitleID] [int] NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeeCalendar]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeCalendar](
	[EmployeeCalendarID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeCalendarLink] [varchar](200) NULL,
 CONSTRAINT [PK_Calendar] PRIMARY KEY CLUSTERED 
(
	[EmployeeCalendarID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipment]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipment](
	[EquipmentID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTypeID] [int] NULL,
	[EquipmentTradeInStatus] [int] NULL,
	[EquipmentBrandID] [int] NULL,
	[EquipmentTradeUnDeadline] [datetime] NULL,
	[EquipmentSerialNumber] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentBrand]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentBrand](
	[EquipmentBrandID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentBrandName] [varchar](50) NULL,
 CONSTRAINT [PK_EquipmentBrand] PRIMARY KEY CLUSTERED 
(
	[EquipmentBrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentQuery]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentQuery](
	[EquipmentQueryID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentID] [int] NULL,
	[OnboarderID] [int] NULL,
	[EquipmentQueryDescription] [varchar](max) NULL,
	[EquipmentQueryDate] [datetime] NULL,
 CONSTRAINT [PK_EquipmentQuery] PRIMARY KEY CLUSTERED 
(
	[EquipmentQueryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentQueryStatus.]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentQueryStatus.](
	[EquipmentQueryStatusID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentQueryID] [int] NULL,
 CONSTRAINT [PK_EquipmentQueryStatus.] PRIMARY KEY CLUSTERED 
(
	[EquipmentQueryStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentTradeInStatus]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentTradeInStatus](
	[EquipmentTradeInStatusID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTradeInStatusDescription] [varchar](50) NULL,
 CONSTRAINT [PK_EquipmentTradeInStatus] PRIMARY KEY CLUSTERED 
(
	[EquipmentTradeInStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EquipmentType]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EquipmentType](
	[EquipmentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentTypeDescription] [varchar](50) NULL,
 CONSTRAINT [PK_EquipmentType] PRIMARY KEY CLUSTERED 
(
	[EquipmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FAQ]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FAQ](
	[FAQID] [int] IDENTITY(1,1) NOT NULL,
	[FAQDescription] [varchar](50) NULL,
	[FAQAnswer] [varchar](50) NULL,
 CONSTRAINT [PK_FAQ] PRIMARY KEY CLUSTERED 
(
	[FAQID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gender]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gender](
	[GenderID] [int] IDENTITY(1,1) NOT NULL,
	[GenderDescription] [varchar](50) NULL,
 CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED 
(
	[GenderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lesson]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lesson](
	[LessonID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NULL,
	[LessonCompletionStatusID] [int] NULL,
	[LessonDescription] [varchar](50) NULL,
	[LessonName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Lesson] PRIMARY KEY CLUSTERED 
(
	[LessonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonCompletionStatus]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonCompletionStatus](
	[LessonCompletionStatusID] [int] IDENTITY(1,1) NOT NULL,
	[LessonCompletionStatusDescription] [varchar](50) NULL,
	[LessonCompletionDate] [datetime] NULL,
 CONSTRAINT [PK_LessonCompletionStatus] PRIMARY KEY CLUSTERED 
(
	[LessonCompletionStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonContent]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonContent](
	[LessonConentID] [int] IDENTITY(1,1) NOT NULL,
	[LessonContenetTypeID] [int] NULL,
	[LessonOutcomeID] [int] NULL,
	[ArchiveStatusID] [int] NULL,
	[LessonContentDescription] [varchar](50) NULL,
	[LessonContent] [varchar](max) NULL,
	[LessonContentTypeId] [int] NULL,
 CONSTRAINT [PK_LessonContent] PRIMARY KEY CLUSTERED 
(
	[LessonConentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonContentType]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonContentType](
	[LessonContentTypeID] [int] IDENTITY(1,1) NOT NULL,
	[LessonContentDescription] [varchar](50) NULL,
 CONSTRAINT [PK_LessonContentType] PRIMARY KEY CLUSTERED 
(
	[LessonContentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LessonOutcome]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LessonOutcome](
	[LessonOutcomeID] [int] IDENTITY(1,1) NOT NULL,
	[LessonID] [int] NULL,
	[LessonOutcomeDescription] [varchar](50) NULL,
	[LessonOutcomeName] [varchar](50) NULL,
 CONSTRAINT [PK_LessonOutcome] PRIMARY KEY CLUSTERED 
(
	[LessonOutcomeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Notification]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Notification](
	[NotificationID] [int] IDENTITY(1,1) NOT NULL,
	[NotificationTypeID] [int] NULL,
	[NotificationMessageDescription] [varchar](50) NULL,
	[CourseID] [int] NULL,
 CONSTRAINT [PK_Notification] PRIMARY KEY CLUSTERED 
(
	[NotificationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Onboarder]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Onboarder](
	[OnboarderID] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OnboarderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnboarderCourseEnrollment]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnboarderCourseEnrollment](
	[OnboarderID] [int] NOT NULL,
	[CourseID] [int] NOT NULL,
	[OnboarderEnrollmentDate] [datetime] NOT NULL,
	[BadgeTotal] [int] NOT NULL,
	[OnboarderGraduationDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[OnboarderID] ASC,
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OnboarderEquipment]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OnboarderEquipment](
	[EquipmentID] [int] NOT NULL,
	[OnboarderID] [int] NOT NULL,
	[EquipmentCheckOutDate] [datetime] NULL,
	[EquipmentCheckInDate] [datetime] NULL,
	[EquipmentCheckInCondition] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[EquipmentID] ASC,
	[OnboarderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Option]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Option](
	[OptionId] [int] IDENTITY(1,1) NOT NULL,
	[QuestionId] [int] NOT NULL,
	[OptionNumber] [int] NOT NULL,
	[OptionDescription] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Option] PRIMARY KEY CLUSTERED 
(
	[OptionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OTP]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OTP](
	[OTP_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NOT NULL,
	[OtpValue] [varchar](50) NOT NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_OTP] PRIMARY KEY CLUSTERED 
(
	[OTP_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostalCode]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostalCode](
	[PostalCodeID] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [varchar](50) NULL,
 CONSTRAINT [PK_PostalCode] PRIMARY KEY CLUSTERED 
(
	[PostalCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Province]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Province](
	[ProvinceID] [int] IDENTITY(1,1) NOT NULL,
	[ProvinceName] [varchar](50) NULL,
 CONSTRAINT [PK_Province] PRIMARY KEY CLUSTERED 
(
	[ProvinceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QueryStatus]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QueryStatus](
	[EquipmentQueryStatusID] [int] IDENTITY(1,1) NOT NULL,
	[EquipmentQueryDescription] [varchar](50) NULL,
 CONSTRAINT [PK_QueryStatus] PRIMARY KEY CLUSTERED 
(
	[EquipmentQueryStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Question]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Question](
	[QuestionID] [int] IDENTITY(1,1) NOT NULL,
	[QuizID] [int] NULL,
	[QuestionCategoryID] [int] NULL,
	[QuestionDescription] [varchar](50) NULL,
	[QuestionAnswer] [varchar](50) NULL,
	[QuestionBankID] [int] NULL,
	[QuestionMarkAllocation] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Question] PRIMARY KEY CLUSTERED 
(
	[QuestionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionBank]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionBank](
	[QuestionBankID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionBankDescription] [varchar](250) NULL,
 CONSTRAINT [PK_QuestionBank] PRIMARY KEY CLUSTERED 
(
	[QuestionBankID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuestionCategory]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuestionCategory](
	[QuestionCategoryID] [int] IDENTITY(1,1) NOT NULL,
	[QuestionBankID] [int] NULL,
	[QuestionCategoryDescription] [varchar](50) NULL,
 CONSTRAINT [PK_QuestionCategory] PRIMARY KEY CLUSTERED 
(
	[QuestionCategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Quiz]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Quiz](
	[QuizID] [int] IDENTITY(1,1) NOT NULL,
	[LessonOutcomeID] [int] NULL,
	[QuizDescription] [varchar](50) NULL,
	[QuizMarkRequirement] [varchar](50) NULL,
	[QuizDueDate] [datetime] NULL,
	[QuizCompletionDate] [datetime] NULL,
	[QuestionBankID] [int] NULL,
	[NumberOfQuestions] [numeric](18, 0) NULL,
 CONSTRAINT [PK_Quiz] PRIMARY KEY CLUSTERED 
(
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Suburb]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Suburb](
	[SuburbID] [int] IDENTITY(1,1) NOT NULL,
	[PostalCodeID] [int] NULL,
	[SuburbName] [varchar](50) NULL,
 CONSTRAINT [PK_Suburb] PRIMARY KEY CLUSTERED 
(
	[SuburbID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Title]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Title](
	[TitleID] [int] IDENTITY(1,1) NOT NULL,
	[TitleDescription] [varchar](50) NULL,
 CONSTRAINT [PK_Title] PRIMARY KEY CLUSTERED 
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](50) NULL,
	[Password] [varchar](max) NULL,
	[EmployeeID] [int] NULL,
	[UserRoleID] [int] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 10/29/2021 9:40:54 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[UserRoleID] [int] IDENTITY(1,1) NOT NULL,
	[UserRoleDescription] [varchar](50) NULL,
	[UserRoleName] [varchar](50) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[UserRoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210911072745_Changed streetnumber from decimal to int', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210911072954_decimal to int', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210911073123_changed to decimal', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210911073214_changed street number to int', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210911073459_street number to string', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210917164109_new code', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210917173352_changed otm name', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210917173731_added value', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210917185532_changed property', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927140314_changed lessonname to byte', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927140909_lessonname to byte', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20210927141121_lessonname to string', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211016074944_new database with fixed composite key issues', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211016093610_new database', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211016094155_employee and title relationship', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211016100039_fixed relationship issues', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211016100851_fixed question and option relationship', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211028113947_added realtionships', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211028114252_1', N'3.1.0')
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20211028114840_user and employee', N'3.1.0')
GO
SET IDENTITY_INSERT [dbo].[Achievement] ON 
GO
INSERT [dbo].[Achievement] ([AchievementID], [AchievementDate], [AchievementTypeID], [OnboarderID], [CourseID], [QuizID], [MarkAchieved]) VALUES (1, NULL, 3, 1, 1, 1, CAST(95 AS Decimal(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Achievement] OFF
GO
SET IDENTITY_INSERT [dbo].[AchievementType] ON 
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (3, N'Gold', NULL)
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (4, NULL, NULL)
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (5, N'dsf', 1)
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (6, N'bmbmn', 1)
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (7, N'123', 2)
GO
INSERT [dbo].[AchievementType] ([AchievementTypeID], [AchievementTypeDescription], [BadgeID]) VALUES (8, N'123', 4)
GO
SET IDENTITY_INSERT [dbo].[AchievementType] OFF
GO
SET IDENTITY_INSERT [dbo].[Address] ON 
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (3, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (4, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (5, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (6, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (7, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (8, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (9, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (11, 1, 1, 1, 1, N'132', N'123456')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (12, 1, 1, 1, 1, N'132', N'123456')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (13, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (14, 1, 1, 1, 1, N'74674638628', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (15, 1, 1, 1, 1, N'74674638628', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (16, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (17, 1, 1, 1, 1, N'74674638628', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (18, 1, 1, 1, 1, N'74674638628', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (19, 1, 1, 1, 1, N'74674638628', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (20, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (21, 1, 1, 1, 1, N'1234', N'12345')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (22, 1, 1, 1, 1, N'55555', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (23, 1, 1, 1, 1, N'55555', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (24, 1, 1, 1, 1, N'55555', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (25, 1, 1, 1, 1, N'55555', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (26, 1, 1, 1, 1, N'1234', N'burnet')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (27, 1, 1, 1, 1, N'1234', N'burnet')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (28, 1, 1, 1, 1, N'123', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (29, 1, 1, 1, 1, N'123', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (30, 1, 1, 1, 1, N'123', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (31, 1, 1, 1, 1, N'1234', N'burnet')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (32, 1, 1, 1, 1, N'1234', N'burnet')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (33, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (34, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (35, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (36, 1, 1, 3, 1, N'1234', N'burben street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (37, 1, 1, 3, 1, N'1234', N'burben street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (38, 1, 1, 3, 1, N'123', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (39, 1, 1, 3, 1, N'123', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (40, 1, 1, 3, 1, N'1234', N'burnet street')
GO
INSERT [dbo].[Address] ([AddressID], [SuburbID], [ProvinceID], [CityID], [CountryID], [StreetNumber], [StreetName]) VALUES (41, 1, 1, 1, 1, N'12345', N'Burnet street')
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[ArchiveStatus] ON 
GO
INSERT [dbo].[ArchiveStatus] ([ArchiveStatusID], [ArchieveStatusDescription]) VALUES (1, N'Archived')
GO
INSERT [dbo].[ArchiveStatus] ([ArchiveStatusID], [ArchieveStatusDescription]) VALUES (2, N'Unarchived')
GO
SET IDENTITY_INSERT [dbo].[ArchiveStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[AuditLog] ON 
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (1, 1, CAST(N'2021-10-01' AS Date), NULL, N'Created Course with name BASICA')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (2, 1, CAST(N'2021-10-06' AS Date), NULL, N'Created Course with name This is test data')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (3, 1, CAST(N'2021-10-07' AS Date), NULL, N'Created Course with name Ethics')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (4, 1, CAST(N'2021-10-16' AS Date), NULL, N'Created Course with name Covid 19 protocol')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (5, 1, CAST(N'2021-10-16' AS Date), NULL, N'Created Course with name Covid 19 protocol')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (6, 19, CAST(N'2021-10-17' AS Date), NULL, N'Created Course with name Introduction Week')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (7, 19, CAST(N'2021-10-17' AS Date), NULL, N'Created Course with name 111')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (12, 1, CAST(N'2021-10-18' AS Date), NULL, N'Created Course with name Sexual harrasment')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (13, 20, CAST(N'2021-10-18' AS Date), NULL, N'Created Option with description Blue')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (14, 20, CAST(N'2021-10-18' AS Date), NULL, N'Created Option with description Blue')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (15, 20, CAST(N'2021-10-18' AS Date), NULL, N'Created Option with description Blue')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (16, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Course with name INF370 Onboarder Course')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (17, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Course with name 123!.')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (18, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Course with name INF324')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (19, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Course with name INF371')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (20, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Option with description At the mountain')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (21, 19, CAST(N'2021-10-20' AS Date), NULL, N'Created Course with name Frikkie COURSE')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (24, 1, CAST(N'2021-10-28' AS Date), NULL, N'Created Question with description ')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (25, 1, CAST(N'2021-10-28' AS Date), NULL, N'Created Question with description ')
GO
INSERT [dbo].[AuditLog] ([AuditLogID], [UserID], [AuditLogDatestamp], [AuditLogTimestamp], [AuditLogDescription]) VALUES (26, 1, CAST(N'2021-10-28' AS Date), NULL, N'Created Question with description ')
GO
SET IDENTITY_INSERT [dbo].[AuditLog] OFF
GO
SET IDENTITY_INSERT [dbo].[Badge] ON 
GO
INSERT [dbo].[Badge] ([BadgeID], [BadgeDecription]) VALUES (1, N'Bronze')
GO
INSERT [dbo].[Badge] ([BadgeID], [BadgeDecription]) VALUES (2, N'Silver')
GO
INSERT [dbo].[Badge] ([BadgeID], [BadgeDecription]) VALUES (3, N'Gold')
GO
INSERT [dbo].[Badge] ([BadgeID], [BadgeDecription]) VALUES (4, N'Bronze')
GO
SET IDENTITY_INSERT [dbo].[Badge] OFF
GO
SET IDENTITY_INSERT [dbo].[City] ON 
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (1, N'South Africa')
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (2, N'Capetown')
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (3, N'Johannessburg')
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (4, N'Bloemfontein')
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (5, N'Durban')
GO
INSERT [dbo].[City] ([CityID], [Country]) VALUES (6, N'Soweto')
GO
SET IDENTITY_INSERT [dbo].[City] OFF
GO
SET IDENTITY_INSERT [dbo].[Country] ON 
GO
INSERT [dbo].[Country] ([CountryID], [CountryName]) VALUES (1, N'South africa')
GO
SET IDENTITY_INSERT [dbo].[Country] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (2, N'This course introduces', CAST(N'2018-01-03T00:00:00.000' AS DateTime), N'2018-01-03')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (3, N'This course introduces', CAST(N'2018-01-03T00:00:00.000' AS DateTime), N'Basics')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (4, N'This course introduces', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'INF 354')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (5, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'Basicsa')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (6, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'Basicsa')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (7, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'Basicsa')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (8, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'Super User')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (10, N'nbvbn', CAST(N'2021-10-21T00:00:00.000' AS DateTime), N'Super Course')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (11, N'This course introduces 123', CAST(N'2021-10-16T00:00:00.000' AS DateTime), N'BASICA')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (14, N'This course introduces', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'OBS 310')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (15, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'OBS 310')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (16, N'this is Testing 1010', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'Testing 101')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (18, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'BASICA')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (19, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'BASICA')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (20, N'THIS IS 354', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'BASICA')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (21, N'This course introduces', CAST(N'2013-03-04T00:00:00.000' AS DateTime), N'BASICA')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (22, N'This is test data', CAST(N'2021-10-14T00:00:00.000' AS DateTime), N'This is test data')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (23, N'This course refers to', CAST(N'2020-05-03T00:00:00.000' AS DateTime), N'Ethics')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (24, N'This course seeks to explain the Covid 19 protocol', CAST(N'2021-10-16T00:00:00.000' AS DateTime), N'Covid 19 protocol')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (25, N'nmmn', CAST(N'2021-10-16T00:00:00.000' AS DateTime), N'Covid 19 protocol')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (26, N'Stuff about introduction Week', CAST(N'2021-10-24T00:00:00.000' AS DateTime), N'Introduction Week')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (27, N'111', CAST(N'2021-10-21T00:00:00.000' AS DateTime), N'111')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (28, N'this vv', CAST(N'2021-10-17T00:00:00.000' AS DateTime), N'One Meter Distant Learning Outcome')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (29, N'this vv', CAST(N'2021-10-17T00:00:00.000' AS DateTime), N'One Meter Distant Learning Outcome')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (30, N'this vv', CAST(N'2021-10-17T00:00:00.000' AS DateTime), N'One Meter Distant Learning Outcome')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (31, N'this vv', CAST(N'2021-10-17T00:00:00.000' AS DateTime), N'One Meter Distant Learning Outcome')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (34, N'sexual harrasment', CAST(N'2020-01-04T00:00:00.000' AS DateTime), N'Sexual harrasment')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (35, N'370Development', CAST(N'2021-11-30T00:00:00.000' AS DateTime), N'INF370 Onboarder Course')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (36, N'', CAST(N'2021-10-13T00:00:00.000' AS DateTime), N'123!.')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (37, N'This is INF324', CAST(N'2021-10-29T00:00:00.000' AS DateTime), N'INF324')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (38, N'System analysis', CAST(N'2021-10-21T00:00:00.000' AS DateTime), N'INF371')
GO
INSERT [dbo].[Course] ([CourseID], [CourseDescription], [CourseDueDate], [CourseName]) VALUES (39, N'tHIS ISFrikkie COURSE', CAST(N'2021-11-06T00:00:00.000' AS DateTime), N'Frikkie COURSE')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[CourseCompletionStatus] ON 
GO
INSERT [dbo].[CourseCompletionStatus] ([CourseCopletionStatusID], [OnboarderID], [CourseID], [CourseCompletionStatusDescription], [CourseCompletionStatusDate]) VALUES (1, 1, 1, N'Complete', NULL)
GO
INSERT [dbo].[CourseCompletionStatus] ([CourseCopletionStatusID], [OnboarderID], [CourseID], [CourseCompletionStatusDescription], [CourseCompletionStatusDate]) VALUES (1, 2, 1, N'Incomplete', NULL)
GO
INSERT [dbo].[CourseCompletionStatus] ([CourseCopletionStatusID], [OnboarderID], [CourseID], [CourseCompletionStatusDescription], [CourseCompletionStatusDate]) VALUES (1, 1, 1, N'Complete', NULL)
GO
INSERT [dbo].[CourseCompletionStatus] ([CourseCopletionStatusID], [OnboarderID], [CourseID], [CourseCompletionStatusDescription], [CourseCompletionStatusDate]) VALUES (1, 2, 1, N'Incomplete', NULL)
GO
SET IDENTITY_INSERT [dbo].[CourseCompletionStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[Department] ON 
GO
INSERT [dbo].[Department] ([DepatmentID], [DepartmentDescription]) VALUES (1, N'Analytics')
GO
INSERT [dbo].[Department] ([DepatmentID], [DepartmentDescription]) VALUES (2, N'Development')
GO
INSERT [dbo].[Department] ([DepatmentID], [DepartmentDescription]) VALUES (3, N'Data warehouse')
GO
SET IDENTITY_INSERT [dbo].[Department] OFF
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (1, NULL, 2, NULL, NULL, N'Camlin', N'Tate', N'Tatum', NULL, N'camlintate1@gmail.com', CAST(847965117 AS Numeric(18, 0)), N'Junior Analysti', 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (2, 2, 2, 1, 1, N'Mahle', N'Shabalala', NULL, NULL, N'mahleshabalala2@yahoo.com', CAST(718872247 AS Numeric(18, 0)), N'Senior Developer', NULL)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (3, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (4, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (5, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (6, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (7, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (8, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(899766534 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (9, NULL, 1, NULL, NULL, N'INF', N'354', N'hbnb', CAST(90909080 AS Numeric(18, 0)), N'string', CAST(1 AS Numeric(18, 0)), NULL, 4)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (10, NULL, 1, NULL, NULL, N'INF', N'nbmnb', N'hbnb', CAST(90909080 AS Numeric(18, 0)), N'string', CAST(1 AS Numeric(18, 0)), NULL, 3)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (11, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(2785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (12, 1, 2, 14, NULL, N'Thabisile', N'Sibanyoni', N'Glender', CAST(99089809809 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (13, 1, 2, 15, NULL, N'Thabisile', N'Sibanyoni', N'Glender', CAST(99089809809 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'develope', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (14, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(2785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (15, 1, 2, 17, NULL, N'Thabisile', N'Sibanyoni', N'Glender', CAST(99089809809 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (16, 1, 2, 18, NULL, N'Thabisile', N'Sibanyoni', N'Glender', CAST(99089809809 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (17, 1, 2, 19, NULL, N'Thabisile', N'Sibanyoni', N'Glender', CAST(99089809809 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (18, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (19, 2, 1, NULL, NULL, N'Joyous Konyana', N'Konyana', N'Njabulo', CAST(9876545 AS Numeric(18, 0)), N'u19067098@tuks.co.za', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (20, 2, 1, NULL, NULL, N'Covid', N'protocol', N'19', CAST(90909080 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (21, 2, 1, NULL, NULL, N'Covid', N'protocol', N'19', CAST(90909080 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (22, 2, 1, NULL, NULL, N'Covid', N'protocol', N'19', CAST(90909080 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (23, 2, 1, NULL, NULL, N'Covid', N'protocol', N'19', CAST(90909080 AS Numeric(18, 0)), N'konyanajoyous2@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (24, 2, 2, NULL, NULL, N'Mahle', N'Shabalala', N'Sneliso', CAST(101170094086 AS Numeric(18, 0)), N'mahlesneliso@gmail.com', CAST(27739069147 AS Numeric(18, 0)), N'Intern software dev', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (25, 2, 2, NULL, NULL, N'Mahle', N'Shabalala', N'Sneliso', CAST(101170094086 AS Numeric(18, 0)), N'mahlesneliso@gmail.com', CAST(27739069147 AS Numeric(18, 0)), N'Intern software dev', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (26, 2, 2, NULL, NULL, N'Mahle', N'Shabalala', N'Sneliso', CAST(90909080 AS Numeric(18, 0)), N'mahlesneliso@gmail.com', CAST(27739069147 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (27, 2, 2, NULL, NULL, N'Mahle', N'Shabalala', N'Sneliso', CAST(90909080 AS Numeric(18, 0)), N'mahlesneliso@gmail.com', CAST(27739069147 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (28, 2, 2, NULL, NULL, N'Mahle', N'Shabalala', N'Sneliso', CAST(90909080 AS Numeric(18, 0)), N'mahlesneliso@gmail.com', CAST(27739069147 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (29, 2, 2, NULL, NULL, N'Camlin', N'Tate', N'Tatum', CAST(9909011238088 AS Numeric(18, 0)), N'u19112549@tuks.co.za', CAST(2784565656454 AS Numeric(18, 0)), N'Intern software dev', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (30, 2, 1, NULL, NULL, N'Gomolemo', N'Kekana', N'dwain', CAST(67890890 AS Numeric(18, 0)), N'kekanagomolemo@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 2)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (31, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (32, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (33, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'1', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (34, 2, 2, NULL, NULL, N'Camlin', N'Tate', N'Tatum', CAST(90909080 AS Numeric(18, 0)), N'camlintate1@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (35, 2, 2, NULL, NULL, N'Camlin', N'Tate', N'Tatum', CAST(90909080 AS Numeric(18, 0)), N'camlintate1@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'Intern software dev', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (36, 2, 2, NULL, NULL, N'Morgan', N'Else', N'Liz', CAST(2345678987 AS Numeric(18, 0)), N'morganeelse@gmail.com', CAST(27717261697 AS Numeric(18, 0)), N'Intern software developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (37, 3, 2, NULL, NULL, N'Nicole', N'Smith', N'Sarah', CAST(9034567890987 AS Numeric(18, 0)), N'u18025685@tuks.co.za', CAST(27785622125 AS Numeric(18, 0)), N'Intern software developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (38, 2, 1, NULL, NULL, N'Frikkie', N' Vogel', N'', CAST(9099989890987 AS Numeric(18, 0)), N'lizette.weilbach@up.ac.za', CAST(22785622125 AS Numeric(18, 0)), N'Intern software developer', 1)
GO
INSERT [dbo].[Employee] ([EmployeeID], [DepartmentID], [GenderID], [AddressID], [EmployeeCalendarID], [FirstName], [LastName], [MiddleName], [IDNumber], [EmailAddress], [ContactNumber], [EmployeeJobTitle], [TitleID]) VALUES (39, 1, 1, NULL, NULL, NULL, NULL, NULL, CAST(324134225646 AS Numeric(18, 0)), N'skhosanajames48@gmail.com', CAST(27785622125 AS Numeric(18, 0)), N'1', 1)
GO
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeeCalendar] ON 
GO
INSERT [dbo].[EmployeeCalendar] ([EmployeeCalendarID], [EmployeeCalendarLink]) VALUES (1, N'https://stackblitz.com/edit/team-14-bmw-main?devtoolsheight=33&file=app')
GO
SET IDENTITY_INSERT [dbo].[EmployeeCalendar] OFF
GO
SET IDENTITY_INSERT [dbo].[Equipment] ON 
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (6, 1, 1, 1, CAST(N'2018-03-02T00:00:00.000' AS DateTime), CAST(4544646 AS Numeric(18, 0)))
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (31, 1, NULL, 1, NULL, CAST(12345 AS Numeric(18, 0)))
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (32, 2, NULL, 1, NULL, CAST(123456 AS Numeric(18, 0)))
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (33, 2, NULL, 1, NULL, CAST(123456 AS Numeric(18, 0)))
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (34, 2, NULL, 1, NULL, CAST(123456 AS Numeric(18, 0)))
GO
INSERT [dbo].[Equipment] ([EquipmentID], [EquipmentTypeID], [EquipmentTradeInStatus], [EquipmentBrandID], [EquipmentTradeUnDeadline], [EquipmentSerialNumber]) VALUES (35, 1, NULL, 1, NULL, CAST(567667 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Equipment] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentBrand] ON 
GO
INSERT [dbo].[EquipmentBrand] ([EquipmentBrandID], [EquipmentBrandName]) VALUES (1, N'Hp')
GO
SET IDENTITY_INSERT [dbo].[EquipmentBrand] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentTradeInStatus] ON 
GO
INSERT [dbo].[EquipmentTradeInStatus] ([EquipmentTradeInStatusID], [EquipmentTradeInStatusDescription]) VALUES (1, N'Traded-in')
GO
INSERT [dbo].[EquipmentTradeInStatus] ([EquipmentTradeInStatusID], [EquipmentTradeInStatusDescription]) VALUES (2, N'Not Traded-in')
GO
SET IDENTITY_INSERT [dbo].[EquipmentTradeInStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[EquipmentType] ON 
GO
INSERT [dbo].[EquipmentType] ([EquipmentTypeID], [EquipmentTypeDescription]) VALUES (1, N'Laptop')
GO
INSERT [dbo].[EquipmentType] ([EquipmentTypeID], [EquipmentTypeDescription]) VALUES (2, N'Headsets')
GO
INSERT [dbo].[EquipmentType] ([EquipmentTypeID], [EquipmentTypeDescription]) VALUES (3, N'YubiKey')
GO
SET IDENTITY_INSERT [dbo].[EquipmentType] OFF
GO
SET IDENTITY_INSERT [dbo].[FAQ] ON 
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (17, N'Who is our admin', N'xzcxzc')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (18, N'When are courses due after date of assignedment', N'Never')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (20, N'When are courses due after date of assignedment', N'2 weeks')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (21, N'When are courses due after date of assignedment', N'Never')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (23, N'When are courses due after date of assignedment', N'2 weeks')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (24, N'cnmcbc', N'x')
GO
INSERT [dbo].[FAQ] ([FAQID], [FAQDescription], [FAQAnswer]) VALUES (25, N'When are courses due after date of assignedment', N'2 weeks')
GO
SET IDENTITY_INSERT [dbo].[FAQ] OFF
GO
SET IDENTITY_INSERT [dbo].[Gender] ON 
GO
INSERT [dbo].[Gender] ([GenderID], [GenderDescription]) VALUES (1, N'Male')
GO
INSERT [dbo].[Gender] ([GenderID], [GenderDescription]) VALUES (2, N'Female')
GO
SET IDENTITY_INSERT [dbo].[Gender] OFF
GO
SET IDENTITY_INSERT [dbo].[Lesson] ON 
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (12, 2, 1, N'This course introduces', N'Super User1')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (13, 2, 1, N'THIS IS 354', N'OBS 310')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (14, 2, 1, N'THIS IS 354', N'OBS 310')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (15, 2, 1, N'i am lesson one', N'lesson one')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (16, 2, 1, N'this is Testing 101', N'Testing 1010')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (17, 10, 1, N'this is Covid 19 protocol lesson', N'Covid 19 protocol lesson')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (18, 27, 1, N'Stand Apert 6m', N'Social Distant Lesson')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (19, 35, 1, N'Find Client', N'Lesson 1')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (20, 35, 1, N'Second lesson', N'Lesson 2')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (21, 37, 1, N'Introduction', N'lesson 1')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (22, 37, 1, N'This is lesson 2', N'Lesson 2')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (23, 38, 1, N'First lesson', N'Lesson 1')
GO
INSERT [dbo].[Lesson] ([LessonID], [CourseID], [LessonCompletionStatusID], [LessonDescription], [LessonName]) VALUES (24, 38, 1, N'Second lesson', N'Lesson 2')
GO
SET IDENTITY_INSERT [dbo].[Lesson] OFF
GO
SET IDENTITY_INSERT [dbo].[LessonCompletionStatus] ON 
GO
INSERT [dbo].[LessonCompletionStatus] ([LessonCompletionStatusID], [LessonCompletionStatusDescription], [LessonCompletionDate]) VALUES (1, N'Complete', NULL)
GO
INSERT [dbo].[LessonCompletionStatus] ([LessonCompletionStatusID], [LessonCompletionStatusDescription], [LessonCompletionDate]) VALUES (2, N'Incomplete', NULL)
GO
INSERT [dbo].[LessonCompletionStatus] ([LessonCompletionStatusID], [LessonCompletionStatusDescription], [LessonCompletionDate]) VALUES (3, N'In Progress', NULL)
GO
SET IDENTITY_INSERT [dbo].[LessonCompletionStatus] OFF
GO
SET IDENTITY_INSERT [dbo].[LessonContent] ON 
GO
INSERT [dbo].[LessonContent] ([LessonConentID], [LessonContenetTypeID], [LessonOutcomeID], [ArchiveStatusID], [LessonContentDescription], [LessonContent], [LessonContentTypeId]) VALUES (1, 1, NULL, 1, N'hdsufsdhfhudsfisdh', NULL, NULL)
GO
INSERT [dbo].[LessonContent] ([LessonConentID], [LessonContenetTypeID], [LessonOutcomeID], [ArchiveStatusID], [LessonContentDescription], [LessonContent], [LessonContentTypeId]) VALUES (3, 1, 9, 1, N'this is', N'zxcv', NULL)
GO
SET IDENTITY_INSERT [dbo].[LessonContent] OFF
GO
SET IDENTITY_INSERT [dbo].[LessonContentType] ON 
GO
INSERT [dbo].[LessonContentType] ([LessonContentTypeID], [LessonContentDescription]) VALUES (1, N'mp4')
GO
INSERT [dbo].[LessonContentType] ([LessonContentTypeID], [LessonContentDescription]) VALUES (2, N'pdf')
GO
INSERT [dbo].[LessonContentType] ([LessonContentTypeID], [LessonContentDescription]) VALUES (3, N'doc')
GO
INSERT [dbo].[LessonContentType] ([LessonContentTypeID], [LessonContentDescription]) VALUES (4, N'mp3')
GO
SET IDENTITY_INSERT [dbo].[LessonContentType] OFF
GO
SET IDENTITY_INSERT [dbo].[LessonOutcome] ON 
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (4, 15, N'nbvnbtryt77', N'OBS 310')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (5, NULL, N'nbvnb', N'Super User')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (6, 17, N'One meter distance', N'One meter distance')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (7, 17, N'This is One meter distance', N'One meter distance')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (8, 17, N'this Covid 19 protocol', N'Covid 19 protocol')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (9, 18, N'Stuff', N'One Meter Distant Learning Outcome 101')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (12, 23, N'This is Lesson 1outcome 1', N'Lesson 1 outcome 1')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (13, 23, N'This is Lesson 1 outcome 2', N'Lesson 1 outcome 2')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (14, 24, N'This is Lesson 2 outcome 1', N'Lesson 2 outcome 1')
GO
INSERT [dbo].[LessonOutcome] ([LessonOutcomeID], [LessonID], [LessonOutcomeDescription], [LessonOutcomeName]) VALUES (15, 24, N'This is Lesson 2 outcome 2', N'Lesson 2 outcome 2')
GO
SET IDENTITY_INSERT [dbo].[LessonOutcome] OFF
GO
SET IDENTITY_INSERT [dbo].[Onboarder] ON 
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (1, 1)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (2, 3)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (3, 5)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (4, 6)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (5, 8)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (6, 9)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (7, 10)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (8, 11)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (9, 12)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (10, 13)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (11, 14)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (12, 15)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (13, 16)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (14, 17)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (15, 18)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (16, 20)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (17, 21)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (18, 22)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (19, 23)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (20, 24)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (21, 25)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (22, 28)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (23, 30)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (24, 31)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (25, 32)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (26, 33)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (27, 34)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (28, 35)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (29, 37)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (30, 38)
GO
INSERT [dbo].[Onboarder] ([OnboarderID], [EmployeeID]) VALUES (31, 39)
GO
SET IDENTITY_INSERT [dbo].[Onboarder] OFF
GO
INSERT [dbo].[OnboarderCourseEnrollment] ([OnboarderID], [CourseID], [OnboarderEnrollmentDate], [BadgeTotal], [OnboarderGraduationDate]) VALUES (1, 6, CAST(N'2020-12-03T00:00:00.000' AS DateTime), 5, CAST(N'2020-12-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OnboarderCourseEnrollment] ([OnboarderID], [CourseID], [OnboarderEnrollmentDate], [BadgeTotal], [OnboarderGraduationDate]) VALUES (1, 7, CAST(N'2020-01-03T00:00:00.000' AS DateTime), 0, NULL)
GO
INSERT [dbo].[OnboarderEquipment] ([EquipmentID], [OnboarderID], [EquipmentCheckOutDate], [EquipmentCheckInDate], [EquipmentCheckInCondition]) VALUES (6, 1, CAST(N'2020-01-03T00:00:00.000' AS DateTime), CAST(N'2020-01-03T00:00:00.000' AS DateTime), N'mint')
GO
INSERT [dbo].[OnboarderEquipment] ([EquipmentID], [OnboarderID], [EquipmentCheckOutDate], [EquipmentCheckInDate], [EquipmentCheckInCondition]) VALUES (6, 2, CAST(N'2021-10-16T00:00:00.000' AS DateTime), CAST(N'2021-10-16T10:32:34.377' AS DateTime), N'2018-01-03')
GO
INSERT [dbo].[OnboarderEquipment] ([EquipmentID], [OnboarderID], [EquipmentCheckOutDate], [EquipmentCheckInDate], [EquipmentCheckInCondition]) VALUES (6, 3, CAST(N'2021-10-16T00:00:00.000' AS DateTime), CAST(N'2021-10-16T13:15:33.023' AS DateTime), N'2018-01-03')
GO
SET IDENTITY_INSERT [dbo].[Option] ON 
GO
INSERT [dbo].[Option] ([OptionId], [QuestionId], [OptionNumber], [OptionDescription]) VALUES (1, 1, 0, N'Blue')
GO
INSERT [dbo].[Option] ([OptionId], [QuestionId], [OptionNumber], [OptionDescription]) VALUES (2, 1, 0, N'Blue')
GO
INSERT [dbo].[Option] ([OptionId], [QuestionId], [OptionNumber], [OptionDescription]) VALUES (3, 1, 0, N'Blue')
GO
INSERT [dbo].[Option] ([OptionId], [QuestionId], [OptionNumber], [OptionDescription]) VALUES (4, 1, 0, N'At the mountain')
GO
SET IDENTITY_INSERT [dbo].[Option] OFF
GO
SET IDENTITY_INSERT [dbo].[OTP] ON 
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (1, 1, N'12344', CAST(N'2020-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (2, 1, N'12344', CAST(N'2020-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (3, 1, N'12344', CAST(N'2020-02-01T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (4, 2, N'442829', CAST(N'2021-09-18T09:05:58.627' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (5, 2, N'323933', CAST(N'2021-09-18T09:14:43.833' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (6, 1, N'444444', CAST(N'2020-01-03T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (7, 1, N'444444', CAST(N'2021-11-11T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (8, 2, N'794255', CAST(N'2021-09-20T11:39:02.310' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (9, 2, N'357812', CAST(N'2021-10-07T14:28:48.507' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (10, 2, N'234612', CAST(N'2021-10-08T15:27:52.603' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (11, 2, N'454637', CAST(N'2021-10-08T15:44:30.230' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (12, 2, N'149886', CAST(N'2021-10-09T10:16:29.847' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (13, 2, N'301995', CAST(N'2021-10-09T10:17:46.243' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (14, 2, N'626646', CAST(N'2021-10-09T10:20:07.043' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (15, 2, N'751560', CAST(N'2021-10-09T10:25:57.960' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (16, 2, N'334757', CAST(N'2021-10-09T10:27:29.023' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (17, 2, N'288044', CAST(N'2021-10-09T10:34:09.017' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (18, 8, N'574262', CAST(N'2021-10-09T10:39:02.630' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (19, 13, N'793890', CAST(N'2021-10-16T17:31:34.893' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (20, 18, N'283156', CAST(N'2021-10-17T16:08:14.930' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (21, 19, N'806632', CAST(N'2021-10-17T16:38:11.260' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (22, 18, N'703618', CAST(N'2021-10-17T21:54:51.127' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (23, 20, N'294566', CAST(N'2021-10-18T06:01:08.457' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (24, 20, N'731971', CAST(N'2021-10-18T06:50:41.267' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (25, 20, N'677749', CAST(N'2021-10-19T18:29:48.253' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (26, 20, N'610504', CAST(N'2021-10-19T18:31:27.540' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (27, 19, N'859095', CAST(N'2021-10-19T18:35:59.257' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (28, 19, N'232718', CAST(N'2021-10-19T18:37:39.933' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (29, 19, N'110905', CAST(N'2021-10-19T18:39:36.620' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (30, 19, N'516401', CAST(N'2021-10-19T19:19:47.257' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (31, 20, N'542569', CAST(N'2021-10-20T07:05:35.480' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (32, 19, N'546976', CAST(N'2021-10-20T07:16:16.210' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (33, 26, N'202986', CAST(N'2021-10-20T07:22:09.813' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (34, 20, N'639257', CAST(N'2021-10-20T07:37:32.367' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (35, 19, N'628937', CAST(N'2021-10-20T07:38:48.163' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (36, 19, N'935907', CAST(N'2021-10-20T08:01:37.810' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (37, 20, N'143154', CAST(N'2021-10-20T08:05:24.157' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (38, 19, N'212962', CAST(N'2021-10-20T08:08:23.000' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (39, 20, N'263030', CAST(N'2021-10-20T08:12:25.607' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (40, 19, N'244276', CAST(N'2021-10-20T08:18:16.260' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (41, 19, N'774487', CAST(N'2021-10-20T08:37:25.513' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (42, 20, N'566619', CAST(N'2021-10-20T08:43:20.420' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (43, 19, N'686732', CAST(N'2021-10-20T08:51:59.130' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (44, 20, N'924491', CAST(N'2021-10-20T09:17:21.047' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (45, 19, N'774755', CAST(N'2021-10-20T09:46:51.130' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (46, 28, N'716340', CAST(N'2021-10-20T10:14:39.140' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (47, 19, N'448888', CAST(N'2021-10-20T10:23:38.887' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (48, 28, N'653062', CAST(N'2021-10-20T10:42:21.147' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (49, 19, N'250367', CAST(N'2021-10-20T10:54:58.430' AS DateTime))
GO
INSERT [dbo].[OTP] ([OTP_ID], [User_ID], [OtpValue], [Timestamp]) VALUES (50, 19, N'966039', CAST(N'2021-10-28T16:42:45.440' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[OTP] OFF
GO
SET IDENTITY_INSERT [dbo].[PostalCode] ON 
GO
INSERT [dbo].[PostalCode] ([PostalCodeID], [PostalCode]) VALUES (1, N'0122')
GO
SET IDENTITY_INSERT [dbo].[PostalCode] OFF
GO
SET IDENTITY_INSERT [dbo].[Province] ON 
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (1, N'Gauteng')
GO
INSERT [dbo].[Province] ([ProvinceID], [ProvinceName]) VALUES (2, N'Gauteng')
GO
SET IDENTITY_INSERT [dbo].[Province] OFF
GO
SET IDENTITY_INSERT [dbo].[Question] ON 
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (1, NULL, 0, N'where is bmw headquaters', N'3', NULL, CAST(0 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (2, NULL, 0, N'where is bmw headquaters', N'3', NULL, CAST(0 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (3, NULL, 4, N'where is bmw headquaters', N'3', NULL, CAST(0 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (4, 1, 4, N'where is bmw headquaters', N'4', NULL, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (5, 1, 4, N'Where is the fountain?', N'2', NULL, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (6, 1, 4, N'where is the office?', N'1', NULL, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (7, 13, 4, N'where is bmw headquaters', N'2', NULL, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (8, 13, 4, N'Where is the fountain?', N'3', NULL, CAST(4 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (9, 13, 4, N'where is the office?', N'3', NULL, CAST(3 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (10, 13, 4, N'Where is the fountain?', N'downtown', NULL, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (11, NULL, 1, N'Who is your boss', N'You', 1, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (12, NULL, 1, N'Who is your admin person', N'Palesa', 1, CAST(1 AS Numeric(18, 0)))
GO
INSERT [dbo].[Question] ([QuestionID], [QuizID], [QuestionCategoryID], [QuestionDescription], [QuestionAnswer], [QuestionBankID], [QuestionMarkAllocation]) VALUES (13, NULL, 4, N'', N'', NULL, CAST(1 AS Numeric(18, 0)))
GO
SET IDENTITY_INSERT [dbo].[Question] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionBank] ON 
GO
INSERT [dbo].[QuestionBank] ([QuestionBankID], [QuestionBankDescription]) VALUES (1, N'This is for course1 lesson15 oucome4')
GO
INSERT [dbo].[QuestionBank] ([QuestionBankID], [QuestionBankDescription]) VALUES (2, N'Thisisforcourse1lesson15 oucome4')
GO
INSERT [dbo].[QuestionBank] ([QuestionBankID], [QuestionBankDescription]) VALUES (3, N'Thisisforcourse1lesson15 oucome4')
GO
INSERT [dbo].[QuestionBank] ([QuestionBankID], [QuestionBankDescription]) VALUES (4, N'This question bank is for course 111')
GO
INSERT [dbo].[QuestionBank] ([QuestionBankID], [QuestionBankDescription]) VALUES (5, N'Quetsion bank for course 111 lesson stand')
GO
SET IDENTITY_INSERT [dbo].[QuestionBank] OFF
GO
SET IDENTITY_INSERT [dbo].[QuestionCategory] ON 
GO
INSERT [dbo].[QuestionCategory] ([QuestionCategoryID], [QuestionBankID], [QuestionCategoryDescription]) VALUES (4, 1, N'multiple choice question')
GO
SET IDENTITY_INSERT [dbo].[QuestionCategory] OFF
GO
SET IDENTITY_INSERT [dbo].[Suburb] ON 
GO
INSERT [dbo].[Suburb] ([SuburbID], [PostalCodeID], [SuburbName]) VALUES (1, 1, N'pta')
GO
SET IDENTITY_INSERT [dbo].[Suburb] OFF
GO
SET IDENTITY_INSERT [dbo].[Title] ON 
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (1, N'Miss')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (2, N'Mr')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (3, N'Mrs')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (4, N'Dr')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (5, N'Ps')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (6, N'Prof')
GO
INSERT [dbo].[Title] ([TitleID], [TitleDescription]) VALUES (7, N'Other')
GO
SET IDENTITY_INSERT [dbo].[Title] OFF
GO
SET IDENTITY_INSERT [dbo].[User] ON 
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (1, N'konyanajoyous2@gmail.com', N'EjL8xI+97dFn9KPLxX7m+uQDGCE=', 0, 2)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (2, N'konyanajoyous2@gmail.com', N'RBGun9S19LgFPtF9tGhSPLp0q80=', 8, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (3, N'string', N'L0DM6hbwdclhBmaK1cvXLgF6a6A=', 9, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (4, N'string', N'uIrZ2cGm5hmbS1AxnYMo0a1ZHpA=', 10, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (5, N'konyanajoyous2@gmail.com', N'FRLr/huHZU8Bh/zH9JXOlTTwzjg=', 11, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (6, N'konyanajoyous2@gmail.com', N'iQCKjIErZdtzldWKl/elMIge8vA=', 12, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (7, N'konyanajoyous2@gmail.com', N'7And4AdS92lMN67PUwAQW2dm/Lk=', 13, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (8, N'skhosanajames48@gmail.com', N'MVSiv5KA1tG99VmPYS+2BKzp5ic=', 14, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (9, N'konyanajoyous2@gmail.com', N'8cijff3G29XbYw5QjfChBQQk8g0=', 15, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (10, N'konyanajoyous2@gmail.com', N'kvx5xasxhn8UPJSpbW+lOtl4dbc=', 16, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (11, N'konyanajoyous2@gmail.com', N'wNOay0+G9+zuSjsbh1AL66UgOgo=', 17, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (12, N'skhosanajames48@gmail.com', N'mQbU7psZXksCxhfjC/V5voBv3E4=', 18, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (13, N'u19067098@tuks.co.za', N'M4aE0NbH1L87eXo7STYlSDRUnu0=', 19, 2)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (14, N'konyanajoyous2@gmail.com', N'esu5ni8ERCGVFZtnzmgwhw6TvEQ=', 20, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (15, N'konyanajoyous2@gmail.com', N'A/3DL5Pk2j2rdRbFWLDchKEcpd8=', 21, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (16, N'konyanajoyous2@gmail.com', N'gh8AELUXT6A1Z6womfWswqMYW64=', 22, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (17, N'konyanajoyous2@gmail.com', N'CnCNX2UW5KZwHdgG9VzU9MxJG1c=', 23, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (18, N'mahlesneliso@gmail.com', N'2jmj7l5rSw0yVb/vlWAYkK/YBwk=', 28, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (19, N'u19112549@tuks.co.za', N'kGi6lipzPi/ItkJTiswQHLTpJCY=', 29, 2)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (20, N'kekanagomolemo@gmail.com', N'UXz0m9cwCVb5FCn+++czGoIc0ec=', 30, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (21, N'skhosanajames48@gmail.com', N'fVPw1ks0BydGNdBBYMCel7DLdZk=', 31, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (22, N'skhosanajames48@gmail.com', N'Fz0dv4R1J/bcUobktfd1tGXIzfA=', 32, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (23, N'skhosanajames48@gmail.com', N'p+5wTqbXIoLtRvksegFY0/D3xg8=', 33, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (24, N'camlintate1@gmail.com', N'guwhgWJJ5/lhoEJ94u4DKUqutUg=', 34, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (25, N'camlintate1@gmail.com', N'RviMFQ7Zkc8076N3lg+QaDOZMfk=', 35, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (26, N'morganeelse@gmail.com', N'2frniPomkEleGHbCd7UUFgk1oGQ=', 36, 19)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (27, N'u18025685@tuks.co.za', N'PEJzeHcjuVXvgSiyw7L3xJEN5Mk=', 37, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (28, N'lizette.weilbach@up.ac.za', N'LGHK2iiHLoNhGSjJzyzS5o/32Ls=', 38, 1)
GO
INSERT [dbo].[User] ([UserID], [Username], [Password], [EmployeeID], [UserRoleID]) VALUES (29, N'skhosanajames48@gmail.com', N'uJi/3CYJLq/q/ZVvq/8Zquca8V0=', 39, 1)
GO
SET IDENTITY_INSERT [dbo].[User] OFF
GO
SET IDENTITY_INSERT [dbo].[UserRole] ON 
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleDescription], [UserRoleName]) VALUES (1, N'This descrption', N'onboarder')
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleDescription], [UserRoleName]) VALUES (2, NULL, N'SuperUser')
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleDescription], [UserRoleName]) VALUES (3, NULL, N'SuperUser')
GO
INSERT [dbo].[UserRole] ([UserRoleID], [UserRoleDescription], [UserRoleName]) VALUES (19, N'Manager access level', N'Manager')
GO
SET IDENTITY_INSERT [dbo].[UserRole] OFF
GO
/****** Object:  Index [IX_Employee_TitleID]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Employee_TitleID] ON [dbo].[Employee]
(
	[TitleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Equipment_EquipmentBrandID]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Equipment_EquipmentBrandID] ON [dbo].[Equipment]
(
	[EquipmentBrandID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Equipment_EquipmentTypeID]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Equipment_EquipmentTypeID] ON [dbo].[Equipment]
(
	[EquipmentTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LessonContent_ArchiveStatusID]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_LessonContent_ArchiveStatusID] ON [dbo].[LessonContent]
(
	[ArchiveStatusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_LessonContent_LessonContentTypeId]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_LessonContent_LessonContentTypeId] ON [dbo].[LessonContent]
(
	[LessonContentTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Option_QuestionId]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Option_QuestionId] ON [dbo].[Option]
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Question_QuizID]    Script Date: 10/29/2021 9:40:54 PM ******/
CREATE NONCLUSTERED INDEX [IX_Question_QuizID] ON [dbo].[Question]
(
	[QuizID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AchievementType]  WITH CHECK ADD  CONSTRAINT [FK_AchievementType_Badge] FOREIGN KEY([BadgeID])
REFERENCES [dbo].[Badge] ([BadgeID])
GO
ALTER TABLE [dbo].[AchievementType] CHECK CONSTRAINT [FK_AchievementType_Badge]
GO
ALTER TABLE [dbo].[AuditLog]  WITH CHECK ADD  CONSTRAINT [FK_AuditLog_User] FOREIGN KEY([UserID])
REFERENCES [dbo].[User] ([UserID])
GO
ALTER TABLE [dbo].[AuditLog] CHECK CONSTRAINT [FK_AuditLog_User]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepatmentID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Title_TitleID] FOREIGN KEY([TitleID])
REFERENCES [dbo].[Title] ([TitleID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Title_TitleID]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentBrand_EquipmentBrandID] FOREIGN KEY([EquipmentBrandID])
REFERENCES [dbo].[EquipmentBrand] ([EquipmentBrandID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentBrand_EquipmentBrandID]
GO
ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentType_EquipmentTypeID] FOREIGN KEY([EquipmentTypeID])
REFERENCES [dbo].[EquipmentType] ([EquipmentTypeID])
GO
ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentType_EquipmentTypeID]
GO
ALTER TABLE [dbo].[Lesson]  WITH CHECK ADD  CONSTRAINT [FK_Lesson_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[Lesson] CHECK CONSTRAINT [FK_Lesson_Course]
GO
ALTER TABLE [dbo].[LessonContent]  WITH CHECK ADD  CONSTRAINT [FK_LessonContent_ArchiveStatus_ArchiveStatusID] FOREIGN KEY([ArchiveStatusID])
REFERENCES [dbo].[ArchiveStatus] ([ArchiveStatusID])
GO
ALTER TABLE [dbo].[LessonContent] CHECK CONSTRAINT [FK_LessonContent_ArchiveStatus_ArchiveStatusID]
GO
ALTER TABLE [dbo].[LessonContent]  WITH CHECK ADD  CONSTRAINT [FK_LessonContent_LessonContentType_LessonContentTypeId] FOREIGN KEY([LessonContentTypeId])
REFERENCES [dbo].[LessonContentType] ([LessonContentTypeID])
GO
ALTER TABLE [dbo].[LessonContent] CHECK CONSTRAINT [FK_LessonContent_LessonContentType_LessonContentTypeId]
GO
ALTER TABLE [dbo].[LessonOutcome]  WITH CHECK ADD  CONSTRAINT [FK_LessonOutcome_Lesson] FOREIGN KEY([LessonID])
REFERENCES [dbo].[Lesson] ([LessonID])
GO
ALTER TABLE [dbo].[LessonOutcome] CHECK CONSTRAINT [FK_LessonOutcome_Lesson]
GO
ALTER TABLE [dbo].[Onboarder]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[OnboarderCourseEnrollment]  WITH CHECK ADD FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([CourseID])
GO
ALTER TABLE [dbo].[OnboarderCourseEnrollment]  WITH CHECK ADD FOREIGN KEY([OnboarderID])
REFERENCES [dbo].[Onboarder] ([OnboarderID])
GO
ALTER TABLE [dbo].[OnboarderEquipment]  WITH CHECK ADD FOREIGN KEY([EquipmentID])
REFERENCES [dbo].[Equipment] ([EquipmentID])
GO
ALTER TABLE [dbo].[OnboarderEquipment]  WITH CHECK ADD FOREIGN KEY([OnboarderID])
REFERENCES [dbo].[Onboarder] ([OnboarderID])
GO
ALTER TABLE [dbo].[Option]  WITH CHECK ADD  CONSTRAINT [FK_Option_Question_QuestionId] FOREIGN KEY([QuestionId])
REFERENCES [dbo].[Question] ([QuestionID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Option] CHECK CONSTRAINT [FK_Option_Question_QuestionId]
GO
ALTER TABLE [dbo].[Question]  WITH CHECK ADD  CONSTRAINT [FK_Question_QuestionBank] FOREIGN KEY([QuestionBankID])
REFERENCES [dbo].[QuestionBank] ([QuestionBankID])
GO
ALTER TABLE [dbo].[Question] CHECK CONSTRAINT [FK_Question_QuestionBank]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_LessonOutcome] FOREIGN KEY([LessonOutcomeID])
REFERENCES [dbo].[LessonOutcome] ([LessonOutcomeID])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_LessonOutcome]
GO
ALTER TABLE [dbo].[Quiz]  WITH CHECK ADD  CONSTRAINT [FK_Quiz_QuestionBank] FOREIGN KEY([QuestionBankID])
REFERENCES [dbo].[QuestionBank] ([QuestionBankID])
GO
ALTER TABLE [dbo].[Quiz] CHECK CONSTRAINT [FK_Quiz_QuestionBank]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_UserRole] FOREIGN KEY([UserRoleID])
REFERENCES [dbo].[UserRole] ([UserRoleID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_UserRole]
GO
USE [master]
GO
ALTER DATABASE [INF 3705] SET  READ_WRITE 
GO
