USE [master]
GO
/****** Object:  Database [SOW_Db]    Script Date: 04-09-2023 10:56:51 ******/
CREATE DATABASE [SOW_Db]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SOW_Db', FILENAME = N'C:\DataBase\MSSQL16.MSSQLSERVER\MSSQL\DATA\SOW_Db.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SOW_Db_log', FILENAME = N'C:\DataBase\MSSQL16.MSSQLSERVER\MSSQL\DATA\SOW_Db_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [SOW_Db] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SOW_Db].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SOW_Db] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SOW_Db] SET ARITHABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SOW_Db] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SOW_Db] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SOW_Db] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SOW_Db] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SOW_Db] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SOW_Db] SET  DISABLE_BROKER 
GO
ALTER DATABASE [SOW_Db] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SOW_Db] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SOW_Db] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SOW_Db] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SOW_Db] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [SOW_Db] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SOW_Db] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SOW_Db] SET  MULTI_USER 
GO
ALTER DATABASE [SOW_Db] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SOW_Db] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SOW_Db] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SOW_Db] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SOW_Db] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SOW_Db] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [SOW_Db] SET QUERY_STORE = OFF
GO
USE [SOW_Db]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[AccountId] [int] IDENTITY(1,1) NOT NULL,
	[AccountName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[AccountId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Candidate]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Candidate](
	[CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[CandidateName] [nvarchar](100) NOT NULL,
	[MobileNo] [nvarchar](50) NOT NULL,
	[Gender] [nvarchar](20) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[EmailId] [nvarchar](100) NOT NULL,
	[Skills] [nvarchar](max) NULL,
	[Location] [nvarchar](100) NOT NULL,
	[Pincode] [nvarchar](10) NOT NULL,
	[Address] [nvarchar](max) NOT NULL,
	[JoiningDate] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[IsInternal] [bit] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[CandidateUid] [nvarchar](100) NULL,
 CONSTRAINT [PK__Candidate] PRIMARY KEY CLUSTERED 
(
	[CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Country]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[CountryId] [int] IDENTITY(1,1) NOT NULL,
	[CountryName] [nvarchar](100) NULL,
	[RegionId] [int] NULL,
	[isDeleted] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DellManager]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DellManager](
	[DellManagerId] [int] IDENTITY(1,1) NOT NULL,
	[DellManagerName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_DellManagerName] PRIMARY KEY CLUSTERED 
(
	[DellManagerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Domain]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Domain](
	[DomainId] [int] IDENTITY(1,1) NOT NULL,
	[DomainName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DomainId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Location]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Location](
	[LocationId] [int] IDENTITY(1,1) NOT NULL,
	[Location] [nvarchar](50) NULL,
	[RegionId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED 
(
	[LocationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[LoginId] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [nvarchar](100) NOT NULL,
	[LoginPassword] [nvarchar](100) NOT NULL,
	[EmailId] [nvarchar](200) NOT NULL,
	[RoleId] [int] NOT NULL,
	[Islock] [bit] NULL,
	[FailureAttempts] [int] NOT NULL,
	[IsDeleted] [bit] NOT NULL,
	[IsFirstLogin] [bit] NOT NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[LoginId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permission]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permission](
	[PermissionId] [int] IDENTITY(1,1) NOT NULL,
	[PermissionName] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Permission] PRIMARY KEY CLUSTERED 
(
	[PermissionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Recruiter]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Recruiter](
	[RecruiterId] [int] IDENTITY(1,1) NOT NULL,
	[RecruiterName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_RecruiterName] PRIMARY KEY CLUSTERED 
(
	[RecruiterId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Region]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Region](
	[RegionId] [int] IDENTITY(1,1) NOT NULL,
	[Region] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_Region] PRIMARY KEY CLUSTERED 
(
	[RegionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Roles]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roles](
	[RoleId] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
	[PermissionId] [int] NOT NULL,
 CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED 
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleScreens]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleScreens](
	[RoleScreenId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[ScreenId] [int] NOT NULL,
 CONSTRAINT [PK_RoleScreens] PRIMARY KEY CLUSTERED 
(
	[RoleScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleTabs]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleTabs](
	[RoleTabId] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [int] NOT NULL,
	[TabId] [int] NOT NULL,
 CONSTRAINT [PK_RoleTabs] PRIMARY KEY CLUSTERED 
(
	[RoleTabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Screens]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Screens](
	[ScreenId] [int] IDENTITY(1,1) NOT NULL,
	[ScreenName] [nvarchar](100) NULL,
 CONSTRAINT [PK_Screens] PRIMARY KEY CLUSTERED 
(
	[ScreenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityAnswer]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityAnswer](
	[AnswerId] [int] IDENTITY(1,1) NOT NULL,
	[LoginId] [int] NULL,
	[QuestionId1] [int] NULL,
	[Answer1] [nvarchar](max) NOT NULL,
	[QuestionId2] [int] NULL,
	[Answer2] [nvarchar](max) NOT NULL,
	[QuestionId3] [int] NULL,
	[Answer3] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AnswerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SecurityQuestion]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SecurityQuestion](
	[QuestionId] [int] IDENTITY(1,1) NOT NULL,
	[Question] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[QuestionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOW]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOW](
	[SowId] [int] IDENTITY(1,1) NOT NULL,
	[SoName] [nvarchar](100) NULL,
	[JRCode] [nvarchar](10) NULL,
	[RequestCreationDate] [datetime] NULL,
	[AccountId] [int] NOT NULL,
	[TechnologyId] [int] NOT NULL,
	[Role] [nvarchar](100) NULL,
	[LocationId] [int] NULL,
	[RegionId] [int] NOT NULL,
	[TargetOpenPositions] [int] NULL,
	[PositionsTobeClosed] [int] NULL,
	[USTPOCId] [int] NOT NULL,
	[RecruiterId] [int] NOT NULL,
	[USTTPMId] [int] NOT NULL,
	[DellManagerId] [int] NOT NULL,
	[StatusId] [int] NULL,
	[Band] [nvarchar](100) NULL,
	[ProjectId] [nvarchar](100) NULL,
	[AccountManager] [nvarchar](200) NULL,
	[ExternalResource] [nvarchar](100) NULL,
	[InternalResource] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
	[Onboardingdate] [datetime] NULL,
 CONSTRAINT [PK_SOW] PRIMARY KEY CLUSTERED 
(
	[SowId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SOWCandidate]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SOWCandidate](
	[SOW_CandidateId] [int] IDENTITY(1,1) NOT NULL,
	[SowId] [int] NOT NULL,
	[CandidateId] [int] NOT NULL,
	[StatusId] [int] NOT NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_SOWCandidate] PRIMARY KEY CLUSTERED 
(
	[SOW_CandidateId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Status]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[StatusId] [int] IDENTITY(1,1) NOT NULL,
	[StatusName] [nvarchar](100) NULL,
	[IsDeleted] [bit] NOT NULL,
	[StatusType] [varchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[StatusId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tabs]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tabs](
	[TabId] [int] IDENTITY(1,1) NOT NULL,
	[TabName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TabId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Technology]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Technology](
	[TechnologyId] [int] IDENTITY(1,1) NOT NULL,
	[TechnologyName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
	[DomainId] [int] NOT NULL,
 CONSTRAINT [PK__Technolo__705701585B3368AA] PRIMARY KEY CLUSTERED 
(
	[TechnologyId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTPOC]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTPOC](
	[USTPOCId] [int] IDENTITY(1,1) NOT NULL,
	[USTPOCName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTPOCName] PRIMARY KEY CLUSTERED 
(
	[USTPOCId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USTTPM]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USTTPM](
	[USTTPMId] [int] IDENTITY(1,1) NOT NULL,
	[USTTPMName] [nvarchar](100) NULL,
	[isDeleted] [bit] NOT NULL,
 CONSTRAINT [PK_USTTPMName] PRIMARY KEY CLUSTERED 
(
	[USTTPMId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (1, N'DL-IN', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (2, N'DL-US', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (3, N'DL-USTI', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (4, N'DL-MY', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (5, N'DL-N', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (6, N'DL-MM', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (7, N'DL-k', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (8, N'DL-L', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (9, N'DL-N', 0)
INSERT [dbo].[Account] ([AccountId], [AccountName], [isDeleted]) VALUES (10, N'DL-MMM', 0)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
SET IDENTITY_INSERT [dbo].[Candidate] ON 

INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (1, N'deeeeep', N'9182737383', N'Female', CAST(N'2000-04-03T00:00:00.000' AS DateTime), N'akuladeepika431@gmail.com', N'Angular', N'Bangalore', N'456382', N'Ananthapur', CAST(N'2023-03-03T00:00:00.000' AS DateTime), 8, 1, 0, N'237515')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (2, N'Darshan Shejawadkar', N'9876543211', N'male', CAST(N'2000-02-17T00:00:00.000' AS DateTime), N'darshan@gmail.com', N'C#', N'BENGALURU', N'500032', N'HYDERABAD', CAST(N'2023-08-01T00:00:00.000' AS DateTime), 4, 0, 0, N'237515')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (3, N'kandukuri prathyusha', N'1234567890', N'female', CAST(N'2023-08-17T00:00:00.000' AS DateTime), N'Abcd@gmail.com', N'c#', N'HYDERABAD', N'508207', N'hyderabad', CAST(N'2023-08-25T00:00:00.000' AS DateTime), 5, 0, 0, N'238023')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (4, N'asdsacs', N'1234567898', N'male', CAST(N'2023-08-01T00:00:00.000' AS DateTime), N'bharath@gmail.com', N'asdsa', N'asdcdasd', N'503144', N'hyder', CAST(N'2023-08-26T00:00:00.000' AS DateTime), 5, 0, 0, N'1232123')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (5, N'divya987', N'7982876283', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya1asdf987@gmail.com', N'Java', N'hydrabad', N'456382', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 4, 1, 0, N'237511')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (6, N'Nandini123', N'9239282922', N'female', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'bhagadsxcya987@ust.com', N'.Net', N'tirupathi', N'563876', N'tirupati', CAST(N'2023-04-13T00:00:00.000' AS DateTime), 5, 0, 0, N'237987')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (7, N'kandukuri987', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'prathyushareddy987@gmail.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 6, 1, 0, N'237518')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (8, N'paida p sahith987', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'paidasahith987@gmail.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 6, 1, 0, N'237519')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (9, N'divya765898', N'7982876283', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya1asd765898@gmail.com', N'Java', N'hydrabad', N'456382', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 5, 1, 0, N'765898')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (10, N'Bhagyaasdc', N'9239282922', N'female', CAST(N'1998-02-10T00:00:00.000' AS DateTime), N'bhagadsxcya12343@ust.com', N'.Net', N'tirupathi', N'563876', N'tirupati', CAST(N'2023-04-13T00:00:00.000' AS DateTime), 5, 0, 0, N'237517')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (11, N'kandukuri prathyusha Reddy', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'prathyushareddy2204@gmail.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 6, 1, 0, N'237518')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (12, N'paida p sahith', N'8522019567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'paidasahith44@gmail.com', N'c#', N'Hyderabad', N'500084', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 6, 1, 0, N'237519')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (13, N'DARSHAN765898', N'"7982876283"', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya1asd765898@gmail.com', N'Java', N'hydrabad', N'"456382"', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 5, 1, 0, N'765898')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (14, N'divya123 Gasdf', N'"7982876283"', N'female', CAST(N'2001-02-14T00:00:00.000' AS DateTime), N'divya1asdf23@gmail.com', N'Java', N'hydrabad', N'"456382"', N'Ananthapur', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 5, 1, 0, N'237516')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (15, N'qwerty', N'1234567', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'qwerty@gmail.com', N'c#', N'Hyderabad', N'"500084"', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 4, 1, 0, N'123456')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (16, N'qwertyqwer', N'1234567213', N'female', CAST(N'2023-04-15T00:00:00.000' AS DateTime), N'qwertyqwer@gmail.com', N'c#', N'Hyderabad', N'123456', N'1-14,neeliagudem,thripuraram,nalgonda', CAST(N'2023-04-21T00:00:00.000' AS DateTime), 5, 0, 0, N'1234569')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (17, N'Rachana', N'9999999911', N'female', CAST(N'2000-03-03T00:00:00.000' AS DateTime), N'rachu@gmail.com', N'C,C#', N'Hyderabad', N'500081', N'cyber pearl,hi-tech city,hyderabad', CAST(N'2022-09-06T00:00:00.000' AS DateTime), 4, 1, 0, N'237559')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (18, N'Rachana p', N'9999999911', N'female', CAST(N'2000-03-03T00:00:00.000' AS DateTime), N'rachup@gmail.com', N'C,C#', N'Hyderabad', N'500081', N'cyber pearl,hi-tech city,hyderabad', CAST(N'2022-09-06T00:00:00.000' AS DateTime), 4, 1, 0, N'237559')
INSERT [dbo].[Candidate] ([CandidateId], [CandidateName], [MobileNo], [Gender], [DOB], [EmailId], [Skills], [Location], [Pincode], [Address], [JoiningDate], [Status], [IsInternal], [IsDeleted], [CandidateUid]) VALUES (19, N'anilkumar', N'7658989298', N'male', CAST(N'2000-04-18T00:00:00.000' AS DateTime), N'bharath456@gmail.com', N'C', N'hyd', N'503144', N'hyderabad', CAST(N'2022-09-06T00:00:00.000' AS DateTime), 4, 1, 0, N'234567')
SET IDENTITY_INSERT [dbo].[Candidate] OFF
GO
SET IDENTITY_INSERT [dbo].[DellManager] ON 

INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (1, N' Anand Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (2, N' Anvesh Kalia', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (3, N'Afsar/Cody', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (4, N'Ajay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (6, N'Akash', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (7, N'Akta/Jyothi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (9, N'Amaresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (11, N'Amit/Ramnath ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (12, N'Anand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (14, N'Anand/Seshu NVL', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (15, N'Anirudh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (17, N'Anna Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (18, N'Anna Saheb', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (20, N'Anvesh/Gopal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (21, N'Archana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (22, N'Arihant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (23, N'Arihanth/Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (24, N'Asha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (26, N'Ashish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (27, N'Ashwin K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (28, N'Asish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (30, N'Azeem/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (31, N'Azeem/Sujatha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (32, N'Badri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (33, N'Balaji', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (34, N'Balaji S', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (35, N'Balaji Venkatesan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (37, N'Bandakka, Jyothi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (38, N'Bhadri Ravikanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (39, N'Bharathi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (41, N'Bijaya Mohanthi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (43, N'Bijaya Mohanty/Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (44, N'Biju', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (45, N'Biju Kariamadathil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (46, N'Bill Huang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (47, N'Binoy/OMSS', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (48, N'Brent', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (49, N'Cecil Joseph', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (50, N'Chandresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (51, N'Chetan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (52, N'Chetan Somaiah', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (54, N'Chetana/Jason', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (55, N'Chinna Basappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (56, N'Chris ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (57, N'Chris Choo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (58, N'Daniela', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (59, N'Darren', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (60, N'Darren/Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (63, N'Dhanraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (66, N'Edward Benedict', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (67, N'Edward/Mahantesh P', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (69, N'Firyana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (70, N'Ganesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (71, N'Ganesh Krishnamurthy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (72, N'Ganesh Krishnamurty ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (73, N'Gokul', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (74, N'Govardhini', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (75, N'Greg', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (76, N'Gudip, Raja Munishwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (77, N'Guna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (78, N'Guru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (79, N'GuruPrasad', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (80, N'Hari Krishna ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (81, N'Hari Laxman/Chandra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (82, N'Hari/Ashish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (83, N'Hari/Binoy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (84, N'Hari/Storage', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (85, N'Harish Hegde', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (87, N'Haseeb', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (89, N'Jagadeesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (91, N'Jagan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (93, N'Jaqueline', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (95, N'Jasti Govardhani', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (97, N'Jerome', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (98, N'JoAnne', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (99, N'Joey', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (101, N'Jyothi Sahoo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (102, N'Kanti Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (103, N'Karen/Madhu Kodali ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (104, N'Karthik Shetty ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (106, N'Kimberly Pierce', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (108, N'Kiran PK', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (110, N'Krishna M', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (111, N'Krishna Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (112, N'Krishna Seshampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (114, N'Leya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (115, N'Lisa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (117, N'Lubica', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (118, N'Madhu Kartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (120, N'Madhu/Naveen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (121, N'Madhu/Nithin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (122, N'Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (123, N'Madhusudhan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (125, N'Mahesh Kancharla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (127, N'Mallikarjun', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (128, N'Manjulatha Kurri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (129, N'Marcio', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (131, N'Mathew,Reena', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (132, N'Mathew/Chetana', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (133, N'McClure, Lisa ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (134, N'Michele', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (135, N'Michele M Smith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (136, N'Michele Smith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (138, N'Miton', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (140, N'Mohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (141, N'Mudalappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (142, N'Mudlappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (144, N'Murthy/Ganesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (146, N'Naga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (147, N'Naga Gajjala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (148, N'Nagesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (151, N'Nitin Kungar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (152, N'Nitin/Madhukartha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (153, N'Obul', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (154, N'Owaiz', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (155, N'Paddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (156, N'Padmanabha V', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (157, N'Paparao', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (158, N'Pareen/Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (159, N'Pedro', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (160, N'Peng Siang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (161, N'Pengsoon', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (162, N'Philip, Thomas ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (164, N'Poornima', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (165, N'Prabhat Biswas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (166, N'Prabhu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (167, N'Pradeep/Mala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (169, N'Praneeth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (170, N'Praneeth/Prashanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (172, N'Prasad Devadiga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (174, N'Praveen ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (175, N'Praveen Kumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (176, N'Praveen MM', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (178, N'Preethi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (179, N'Preethi SathishBabu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (180, N'Preeti', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (181, N'Prince Antony', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (182, N'Radhika', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (183, N'Radhika/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (185, N'Raja Munishwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (186, N'Raja T', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (187, N'Rajitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (189, N'Rajneesh Shukla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (190, N'Rajnikanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (191, N'Rakesh Mohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (193, N'Ramnath Pai', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (194, N'Ranga', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (195, N'Ranga/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (196, N'Ranjit', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (197, N'Ranjith Vizhakkat', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (198, N'Ravindra Chelamkuri', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (199, N'Reinaldo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (200, N'Ripa Patel', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (201, N'Ritu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (202, N'Robin Khosla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (203, N'Rohitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (204, N'Sagar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (205, N'Sai', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (206, N'Sailaja', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (207, N'Sailaja/Praveen MM', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (208, N'Saira Banu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (209, N'Sairabanu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (210, N'Sajan Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (211, N'Sajen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (212, N'Sajen Jose', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (214, N'Sandeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (215, N'Sandeep Jahagirdar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (216, N'Sanjay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (218, N'Sanmati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (219, N'Santosh Nair', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (220, N'Sarat Munagapati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (223, N'Saumyadipta ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (224, N'Sayeed Ahmed ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (225, N'Scott Frazier', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (227, N'Senthil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (229, N'Seshu/Sushma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (230, N'Shalini Chauhan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (231, N'Shameer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (232, N'shameer,saidu ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (233, N'Sheirlin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (234, N'Sherilin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (235, N'Shoib', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (237, N'Siva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (238, N'Sohan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (239, N'Spurthi/Saravanan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (240, N'Sreedevi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (242, N'Sri Ram', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (243, N'Sridevi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (244, N'Sridharan Ramkumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (245, N'Srikantha Tirandas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (247, N'Srinivas Teki', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (248, N'SrinivasMallampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (249, N'Sriram', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (250, N'Sriram Chandrasekharan/Carlos', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (251, N'Srivastava, Gaurav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (252, N'Srivatsa Chalam', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (254, N'Sudheendra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (255, N'Sudhindra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (256, N'Sujatha', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (258, N'Sujith Ravaindran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (259, N'Sujith Ravidran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (261, N'Suman Cherukpalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (262, N'Suman Cherukupalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (263, N'Suman/Saumya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (265, N'Sunil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (266, N'Sunita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (268, N'Surendra Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (269, N'Suresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (271, N'Suresh Kondapi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (273, N'Suresh Singh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (274, N'Sushma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (275, N'Sushma/Seshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (277, N'Syed', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (278, N'T V Ramgopal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (280, N'Thomas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (281, N'Thomas philip', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (282, N'Thomas Phillip', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (283, N'TS', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (284, N'TV Gokul/Vivekananda', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (286, N'Umesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (287, N'Umesh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (288, N'Umesh, Singh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (290, N'Uzair Farooqui', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (291, N'Vageesha/Prajot', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (292, N'Venkat Damerla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (293, N'Venkata Damerla', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (295, N'Vijeesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (296, N'Vikas', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (297, N'Vikas/Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (298, N'Vikas/Kiran PK', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (301, N'Vinay Parthasarathy/Shalini/', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (302, N'Vinay.Parthasarathy/Alex', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (303, N'Vineeta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (305, N'Vinod ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (306, N'Vinu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (307, N'Vinu Nair', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (308, N'Vishal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (309, N'Vishal Agarwal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (310, N'Vishal Gandhi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (312, N'Vishwa  K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (313, N'Vishwa B R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (315, N'Vishwa K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (318, N'Viswanath Krishnamur', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (319, N'Viswanath Meghanatham', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (320, N'Viswanath Megnath', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (321, N'Vivekanand R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (322, N'Wai on', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (323, N'Wignes', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (324, N'Wilson/Swati', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (325, N'Zang', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (326, N'Zhen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (328, N'Abhilash', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (330, N'Ajoy Basu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (332, N'Akta/Sunil', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (334, N'Amit', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (335, N'Amit/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (337, N'Anand Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (339, N'Anirudh M A', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (341, N'Anuj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (342, N'Anuj Gupta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (343, N'Anvesh Kalia', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (344, N'Arun Sanjay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (345, N'Arvind ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (346, N'Asha Shanmugan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (347, N'Asha/Srivatsav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (350, N'Azeem', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (354, N'Balaji/Suresh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (356, N'Bangaru/Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (357, N'Basant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (359, N'Bijaya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (361, N'Bijaya Mohanty', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (364, N'Bobby', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (365, N'Cancelled', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (366, N'Chandresh Suman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (368, N'Chetana/Azeem', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (372, N'Das1,Sunita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (373, N'Debasis', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (374, N'Deepa Khed', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (375, N'Deepa Srikumar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (376, N'Deva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (378, N'Dolton', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (379, N'Dolton John/Ravi Kulkarni', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (380, N'Dolton John/Tiva', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (382, N'Eileen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (383, N'Elavarasu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (384, N'Evelyn ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (386, N'Ganesh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (391, N'Harsh Sharma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (393, N'Indu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (395, N'Jagadish', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (396, N'Jagdish Yadav', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (397, N'Jaipal', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (399, N'Jason/Chetana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (401, N'Jaysheelan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (402, N'Jeff Hughes', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (404, N'John Dorman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (406, N'Jyoti Sahoo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (408, N'ken', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (409, N'Kingsley/Sitha', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (410, N'Kiran', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (411, N'Kiran HR', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (412, N'Kiran Rangaswamy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (413, N'Kiran/ Girish K ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (414, N'Krishna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (416, N'Krishna mylapur', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (417, N'Krsihna M', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (418, N'Lakshmanan, Hari ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (419, N'Lala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (420, N'Leon', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (422, N'Lisa Resendez', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (424, N'Madhu Kodali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (425, N'Madhu/Radhika', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (427, N'MAHANTESH/EDWARD', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (428, N'Mahantesh/Edward Benedict', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (429, N'Mahaveer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (430, N'Mahaveer Jain', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (431, N'Mahavir', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (433, N'Mallari', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (435, N'Mallikarjun Garikapa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (436, N'Mamatha Mahadevappa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (438, N'Masthan Reddy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (439, N'Mathew', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (441, N'Menu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (443, N'Mihai Stan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (444, N'Mike', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (446, N'Mitra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (447, N'Mofi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (449, N'Munwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (450, N'Murali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (452, N'NA', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (455, N'Nandin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (456, N'Naveen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (457, N'Nihilo', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (458, N'Nirmala Mallanna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (459, N'Nitin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (461, N'Norman Simmonds', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (462, N'Padmanabha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (464, N'Pareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (467, N'Piyush', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (468, N'Poh Chiu Lim', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (470, N'Pradeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (471, N'Prajot', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (472, N'Prajot Kurade', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (474, N'Prasad A/Nagendra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (475, N'Prasad Avula', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (476, N'PrasadSiddheshwar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (477, N'Prashanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (478, N'Pratiba Verma', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (481, N'Praveen Sai guru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (483, N'Raj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (484, N'Raj Markala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (486, N'Raja Munishwer', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (487, N'Rajesh Kumar Alle', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (488, N'Rajesh Pandita', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (489, N'Rajkumar Markala', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (490, N'Rajneesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (493, N'Ramkumar Sridharan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (494, N'Ranbir', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (495, N'Ravi Jayanthan ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (496, N'Robin /Murali', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (498, N'Sailesh/Anand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (500, N'Sajith Das', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (503, N'Sanjay Tiwari', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (506, N'Saravanan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (507, N'Saravanan/SivGanesh', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (508, N'Sareen', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (510, N'Savitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (512, N'Selvaraj', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (514, N'Senthil Urkavalan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (515, N'Seshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (517, N'Sherlin', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (518, N'Sheshu', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (519, N'Shibi Paniker', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (520, N'Shoaib Ulla Khan', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (521, N'Shwetha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (522, N'Shwetha Acharya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (523, N'Sibi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (524, N'Sivanand', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (525, N'Soumya', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (526, N'Spoorthi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (528, N'Sreerama', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (531, N'Srinivas Mallampalli', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (535, N'Subhasis', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (538, N'Sujay/Subhodeep', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (539, N'Sujay/Susana', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (540, N'Sujith', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (541, N'Sukanth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (542, N'Suman', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (543, N'Sumathi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (544, N'Sundar', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (546, N'Sunita Das', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (547, N'Sunitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (549, N'Suresh K', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (551, N'Suresh Kondapoi', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (552, N'Suresh R', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (554, N'Swapna', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (555, N'Swapna Mishra', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (556, N'Swathi ', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (557, N'swati K', 0)
GO
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (558, N'Tanmajoy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (559, N'TBD', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (560, N'Teja', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (561, N'Thiru', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (562, N'Tousif', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (564, N'Uday', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (566, N'Umesh/Akta', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (567, N'Umesh/Mathew', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (570, N'Vijay Ragam', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (572, N'Vikrant', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (573, N'Vikranth', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (574, N'Vinay', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (575, N'Vinay Parthasarathy', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (576, N'Vineetha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (577, N'Vinitha', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (581, N'Vishwa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (583, N'Vishwa BR', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (585, N'Vishwanath Megnath', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (586, N'Viswa', 0)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (587, N'Viswa kh', 1)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (588, N'Nandini', 1)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (589, N'RR', 1)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (590, N'Viswa', 1)
INSERT [dbo].[DellManager] ([DellManagerId], [DellManagerName], [isDeleted]) VALUES (591, N'vi', 1)
SET IDENTITY_INSERT [dbo].[DellManager] OFF
GO
SET IDENTITY_INSERT [dbo].[Domain] ON 

INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (1, N'Analytics', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (2, N'App Dev', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (3, N'Cloud', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (4, N'DB', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (5, N'EBI/DWH', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (6, N'Mobility', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (7, N'Others', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (8, N'PM', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (9, N'QA/QE', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (10, N'R&D', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (11, N'Support', 0)
INSERT [dbo].[Domain] ([DomainId], [DomainName], [isDeleted]) VALUES (12, N'UX/UI', 0)
SET IDENTITY_INSERT [dbo].[Domain] OFF
GO
SET IDENTITY_INSERT [dbo].[Location] ON 

INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (1, N'US', 4, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (2, N'HYD', 1, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (3, N'SG', 1, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (4, N'MY', 4, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (5, N'BNG', 3, 0)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (6, N'BNG', 4, 1)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (7, N'nzb', 1, 1)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (8, N'kmr', 3, 1)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (9, N'NZB', 1, 1)
INSERT [dbo].[Location] ([LocationId], [Location], [RegionId], [isDeleted]) VALUES (10, N'HYD', 6, 0)
SET IDENTITY_INSERT [dbo].[Location] OFF
GO
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1, N'Admin DELL ', N'QWJjZEAxMjM=', N'admin@gmail.com', 1, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (2, N'Darshan', N'QWJjZEAxMjM=', N'darshan@admin.com', 2, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (3, N'Darshan', N'QWJjZEAxMjM=', N'darshan@manager.com', 2, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (4, N'Darshan', N'QWJjZEAxMjM=', N'darshan@recruiter.com', 3, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (5, N'Darshan', N'QWJjZEAxMjM=', N'darshan@tpm.com', 4, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (6, N'Darshan', N'QWJjZEAxMjM=', N'darshan@poc.com', 5, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (7, N'bharath', N'QWJjZEAxMjM=', N'bharath@gmail.com', 1, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1007, N'Nandini', N'U293QDEyMw==', N'nandini@gmail.com', 2, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1008, N'asdfghj', N'U293QDEyMw==', N'qwerfgvbnhj@gmail.com', 1, 0, 0, 1, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1009, N'na', N'U293QDEyMw==', N'na@gmail.com', 1, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1010, N'prathyusha', N'QWJjZEAxMjM=', N'prathyusha@gmail.com', 2, 0, 0, 0, 0)
INSERT [dbo].[Login] ([LoginId], [LoginName], [LoginPassword], [EmailId], [RoleId], [Islock], [FailureAttempts], [IsDeleted], [IsFirstLogin]) VALUES (1011, N'dheeraj', N'QWJjZEAxMjM=', N'dheeraj@gmail.com', 2, 0, 0, 0, 0)
SET IDENTITY_INSERT [dbo].[Login] OFF
GO
SET IDENTITY_INSERT [dbo].[Permission] ON 

INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (1, N'View')
INSERT [dbo].[Permission] ([PermissionId], [PermissionName]) VALUES (2, N'Edit')
SET IDENTITY_INSERT [dbo].[Permission] OFF
GO
SET IDENTITY_INSERT [dbo].[Recruiter] ON 

INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (1, N'Abhishek P', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (2, N'Jhansi C', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (3, N'Suman K', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (4, N'Ashwini N', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (5, N'Niriksha G', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (6, N'Sumant Gv', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (7, N'Nandini', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (8, N'bharath', 0)
INSERT [dbo].[Recruiter] ([RecruiterId], [RecruiterName], [isDeleted]) VALUES (9, N'bhara', 1)
SET IDENTITY_INSERT [dbo].[Recruiter] OFF
GO
SET IDENTITY_INSERT [dbo].[Region] ON 

INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (1, N'IN', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (2, N'MY', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (3, N'SG', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (4, N'US', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (6, N'PAK', 0)
INSERT [dbo].[Region] ([RegionId], [Region], [isDeleted]) VALUES (7, N'UK', 1)
SET IDENTITY_INSERT [dbo].[Region] OFF
GO
SET IDENTITY_INSERT [dbo].[Roles] ON 

INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (1, N'Admin', 2)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (2, N'DM', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (3, N'Recruiter', 2)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (4, N'TPM', 1)
INSERT [dbo].[Roles] ([RoleId], [RoleName], [PermissionId]) VALUES (5, N'POC', 2)
SET IDENTITY_INSERT [dbo].[Roles] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleScreens] ON 

INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1, 1, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (2, 1, 2)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (3, 1, 3)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (4, 1, 4)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (5, 1, 5)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (6, 2, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (7, 2, 2)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (8, 2, 3)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (9, 2, 4)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (10, 3, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (11, 3, 4)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (12, 3, 5)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1009, 5, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1011, 5, 2)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1012, 5, 5)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1013, 4, 1)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1014, 4, 2)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1015, 4, 3)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1016, 4, 4)
INSERT [dbo].[RoleScreens] ([RoleScreenId], [RoleId], [ScreenId]) VALUES (1017, 5, 4)
SET IDENTITY_INSERT [dbo].[RoleScreens] OFF
GO
SET IDENTITY_INSERT [dbo].[RoleTabs] ON 

INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (1, 1, 1)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (2, 1, 2)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (3, 1, 3)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (4, 1, 4)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (5, 1, 5)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (6, 1, 6)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (7, 1, 7)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (8, 1, 8)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (9, 1, 9)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (10, 1, 10)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (11, 1, 11)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (12, 1, 12)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (14, 3, 1)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (15, 5, 1)
INSERT [dbo].[RoleTabs] ([RoleTabId], [RoleId], [TabId]) VALUES (16, 5, 2)
SET IDENTITY_INSERT [dbo].[RoleTabs] OFF
GO
SET IDENTITY_INSERT [dbo].[Screens] ON 

INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (1, N'CandidateDetails')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (2, N'SOW')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (3, N'Mapping')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (4, N'ChangePassword')
INSERT [dbo].[Screens] ([ScreenId], [ScreenName]) VALUES (5, N'Admin')
SET IDENTITY_INSERT [dbo].[Screens] OFF
GO
SET IDENTITY_INSERT [dbo].[SecurityAnswer] ON 

INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1004, 7, 12, N'hyddd', 10, N'hyddd', 8, N'hyddd')
INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1005, 1010, 12, N'hyddd', 10, N'hyddd', 8, N'hyddd')
INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1007, 1011, 12, N'hyddd', 11, N'hyddd', 8, N'hyddd')
INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1008, 1011, 12, N'hyddd', 11, N'hyddd', 8, N'hyddd')
INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1009, 1011, 12, N'hyddd', 11, N'hyddd', 8, N'hyddd')
INSERT [dbo].[SecurityAnswer] ([AnswerId], [LoginId], [QuestionId1], [Answer1], [QuestionId2], [Answer2], [QuestionId3], [Answer3]) VALUES (1010, 1011, 12, N'hyddd', 11, N'hyddd', 8, N'hyddd')
SET IDENTITY_INSERT [dbo].[SecurityAnswer] OFF
GO
SET IDENTITY_INSERT [dbo].[SecurityQuestion] ON 

INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (1, N'What city were you born in?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (2, N'What is your oldest sibling’s middle name?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (3, N'What is your astrological sign?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (4, N'What Is your favorite book?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (5, N'What is the name of the road you grew up on?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (6, N'What was the name of your first/current/favorite pet?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (7, N'Where did you meet your spouse?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (8, N'Where did you go to high school/college?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (9, N'What is your favorite food?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (10, N'Where is your favorite place to vacation?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (11, N'In what city or town was your first job?')
INSERT [dbo].[SecurityQuestion] ([QuestionId], [Question]) VALUES (12, N'What is the name of your favorite childhood friend?')
SET IDENTITY_INSERT [dbo].[SecurityQuestion] OFF
GO
SET IDENTITY_INSERT [dbo].[SOW] ON 

INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (1, N'Darshan', N'142', CAST(N'2023-09-01T14:47:22.960' AS DateTime), 4, 180, N'Dev', 4, 1, 2, 1, 6, 4, 27, 570, 1, N'A', N'12345', N'sathish', N'test1', N'wrfrwgwe', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (2, N'.NET FULL STACK', N'56787654', CAST(N'2023-07-04T18:30:00.000' AS DateTime), 4, 6, N'Developer', 4, 3, 2, 1, 6, 4, 27, 570, 2, N'asds', N'gt545678ugvy', N'Uday', N'darshan', N'darshan', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (69, N'Bha', N'1234987432', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 2, N'Developer', 3, 2, 1, 1, 6, 3, 3, 343, 3, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (70, N'Bhagya laxmi987', N'237892987', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 3, 2, N'admin', 3, 3, 1, 1, 3, 3, 2, 343, 4, N'A', N'dhhef', N'mahesh', N'test1', N'chaithra', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (71, N'Chaithra987', N'1234987', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 3, 4, N'Developer', 3, 2, 1, 1, 2, 3, 2, 4, 1, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (72, N'check1', N'765898', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 3, 4, N'Developer', 2, 3, 1, 1, 4, 4, 21, 9, 2, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 1, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (73, N'check154321', N'7658981234', CAST(N'2023-04-04T00:00:00.000' AS DateTime), 4, 4, N'Developer', 5, 3, 1, 1, 4, 4, 21, 9, 3, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (1140, N'check0909090', N'7000012345', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 4, 4, N'Developer', 2, 3, 6, 6, 4, 4, 21, 9, 3, N'A', N'123', N'mahesh', N'bhagya', N'bhagya', 0, CAST(N'2023-09-01T14:47:22.960' AS DateTime))
INSERT [dbo].[SOW] ([SowId], [SoName], [JRCode], [RequestCreationDate], [AccountId], [TechnologyId], [Role], [LocationId], [RegionId], [TargetOpenPositions], [PositionsTobeClosed], [USTPOCId], [RecruiterId], [USTTPMId], [DellManagerId], [StatusId], [Band], [ProjectId], [AccountManager], [ExternalResource], [InternalResource], [isDeleted], [Onboardingdate]) VALUES (1149, N'Nandini', N'0987654321', CAST(N'2023-04-04T13:06:55.020' AS DateTime), 1, 3, N'Developer', 3, 1, 4, 4, 2, 3, 3, 3, 2, N'A', N'123', N'Rachana', N'prathyusha', N'bhagya', 0, CAST(N'2024-04-04T13:06:55.020' AS DateTime))
SET IDENTITY_INSERT [dbo].[SOW] OFF
GO
SET IDENTITY_INSERT [dbo].[SOWCandidate] ON 

INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (1, 1, 1, 2, 0)
INSERT [dbo].[SOWCandidate] ([SOW_CandidateId], [SowId], [CandidateId], [StatusId], [isDeleted]) VALUES (2, 73, 15, 4, 0)
SET IDENTITY_INSERT [dbo].[SOWCandidate] OFF
GO
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (1, N'Offered', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (2, N'Declined', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (3, N'Closed', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (4, N'Joined', 0, N'Candidate')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (5, N'Cancelled', 0, N'Candidate')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (6, N'Rejected', 0, N'Candidate')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (7, N'Joined', 0, N'SO')
INSERT [dbo].[Status] ([StatusId], [StatusName], [IsDeleted], [StatusType]) VALUES (8, N'Offered', 0, N'Candidate')
SET IDENTITY_INSERT [dbo].[Status] OFF
GO
SET IDENTITY_INSERT [dbo].[Tabs] ON 

INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (1, N'Candidate')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (2, N'SO')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (3, N'Account')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (4, N'DellManager')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (5, N'Domain')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (6, N'Location')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (7, N'Registration')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (8, N'Region')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (9, N'Recruiter')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (10, N'Technology')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (11, N'USTPOC')
INSERT [dbo].[Tabs] ([TabId], [TabName]) VALUES (12, N'USTTPM')
SET IDENTITY_INSERT [dbo].[Tabs] OFF
GO
SET IDENTITY_INSERT [dbo].[Technology] ON 

INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (1, N'AI/ML', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (2, N'DA - Data Analytics', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (3, N'Data Analytics', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (4, N'Data Governance', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (5, N'Data Science', 0, 1)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (6, N'.Net', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (7, N'.NET - Full stack', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (8, N'Angular JS', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (9, N'Angular UI', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (10, N'API Developers', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (11, N'API/Phyton', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (12, N'App Build', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (13, N'Java', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (14, N'Java - Angular', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (15, N'Java - Backend', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (16, N'JAVA - Full stack', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (17, N'Java - Node.js', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (18, N'Mern Fullstack', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (19, N'MongoDB', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (20, N'Python', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (21, N'React JS', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (22, N'RPA', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (23, N'Software Developer', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (24, N'Spark/Scala', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (25, N'UI Dev', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (26, N'UI Dev - Angular', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (27, N'UI Dev - Angular JS', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (28, N'UI-Front end', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (29, N'XQUERY Dev', 0, 2)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (30, N'Azure', 0, 3)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (31, N'Cloud infra', 0, 3)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (32, N'Cassandra', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (33, N'Cloudera Developer/ Admin', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (34, N'DB Developer', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (35, N'DBA/Dev', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (36, N'ELASTIC', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (37, N'Greenplum Admins', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (38, N'Greenplum DBA', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (39, N'MEMSQL', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (40, N'Oracle', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (41, N'Oracle DB', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (42, N'Oracle DBA', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (43, N'Oracle SOA', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (44, N'PostgreSQL', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (45, N'SQL Developer', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (46, N'SQL Support', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (47, N'Teradata', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (48, N'SQL Server', 0, 4)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (49, N'Abinitio', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (50, N'BOBJ', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (51, N'Data Architect', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (52, N'ETL Architect', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (53, N'ETL Streamsets', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (54, N'ETL Tester', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (55, N'Hadoop', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (56, N'Hyperion', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (57, N'ILM', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (58, N'Informatica Support', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (59, N'Informatica/Teradata', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (60, N'OBIEE', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (61, N'OBIEE Admin', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (62, N'OBIEE Lead', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (63, N'ODI Developer', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (64, N'PL/SQL', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (65, N'Power BI', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (66, N'SSIS,SSAS', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (67, N'Streamsets', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (68, N'Tableau', 0, 5)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (69, N'MOBILITY', 0, 6)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (70, N'ABAP ', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (71, N'Apps', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (72, N'Associate Business Analysis', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (73, N'AMS', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (74, N'BA', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (75, N'B2B', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (76, N'Associate', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (77, N'Ansible', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (78, N'Biztalk', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (79, N'App support', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (80, N'ABAP', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (81, N'BOOMI', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (82, N'BPEL', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (83, N'cyber security', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (84, N'Data Engineer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (85, N'Desktop Support', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (86, N'Devops', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (87, N'Document Writer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (88, N'ELK', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (89, N'Financial Force', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (90, N'Firewall Administrator', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (91, N'Flutter', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (92, N'Fresher', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (93, N'Grafana and Kibana', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (94, N'Hardware', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (95, N'HPC', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (96, N'Hybrid', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (97, N'IMS', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (98, N'Infra', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (99, N'Install Shield', 0, 7)
GO
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (100, N'Inv Mgr', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (101, N'JIRA', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (102, N'Kafka', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (103, N'L3 Support', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (104, N'Linux', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (105, N'Middleware', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (106, N'ML Engineer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (107, N'Monitoring', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (108, N'MS Dynamics ', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (109, N'MSAS', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (110, N'NEO4J', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (111, N'Nifi Dev', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (112, N'Oracle Apps', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (113, N'Oracle AR', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (114, N'Oracle OM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (115, N'Oracle PLM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (116, N'OS ', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (117, N'OS Core Agent', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (118, N'OTM', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (119, N'PC Tech', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (120, N'Pega', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (121, N'POC', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (122, N'powershell', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (123, N'Process Associate', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (124, N'Production support', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (125, N'Rabbit MQ', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (126, N'SAP', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (127, N'SAP BW', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (128, N'Security Operations', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (129, N'Security Vulnerabilities', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (130, N'Server', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (131, N'Service now', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (132, N'SFDC', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (133, N'Sharepoint Dev', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (134, N'Siebel', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (135, N'Sr Associate', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (136, N'Storage/Backup administration', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (137, N'System Engg', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (138, N'Tech Recruiter', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (139, N'Tech Writer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (140, N'Technical Writer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (141, N'Template', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (142, N'Unix Shell Scripting', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (143, N'Vulnerability Remediation', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (144, N'Weblogic Admin', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (145, N'Window system Engg', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (146, N'Windows App UI Developer', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (147, N'Windows OS Plat', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (148, N'Winforms', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (149, N'XSLT and XSLFO', 0, 7)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (150, N'Agile Coach', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (151, N'Agile PLM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (152, N'Architect', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (153, N'AM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (154, N'Delivery Manager', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (155, N'DWH -PM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (156, N'PM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (157, N'PMO', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (158, N'PO', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (159, N'PO/TPM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (160, N'Product Manager', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (161, N'Program Mgr', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (162, N'Scrum Master', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (163, N'TPM', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (164, N'Perf. Test', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (165, N'SDET', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (166, N'Test lead', 0, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (167, N'BIOS', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (168, N'C++', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (169, N'Content Development', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (170, N'Embedded Developer', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (171, N'Golang', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (172, N'GPU Driver Engineer', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (173, N'Hardware Procurement', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (174, N'Integration', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (175, N'SSCM', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (176, N'UEFI', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (177, N'Validation Eng', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (178, N'Window Driver', 0, 10)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (179, N'EMS-Support Analyst', 0, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (180, N'L2 Support', 1, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (181, N'L2/L3 Support', 1, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (182, N'Angular Dev', 0, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (183, N'UI Angular Dev', 0, 8)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (184, N'UX - Product Designer', 1, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (185, N'UX Designer', 1, 12)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (186, N'L2\L3 Support', 1, 11)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (187, N'UI-Product Designer', 1, 9)
INSERT [dbo].[Technology] ([TechnologyId], [TechnologyName], [isDeleted], [DomainId]) VALUES (188, N'UI Angular Devv', 0, 8)
SET IDENTITY_INSERT [dbo].[Technology] OFF
GO
SET IDENTITY_INSERT [dbo].[USTPOC] ON 

INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (1, N'Divya P', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (2, N'Chitralekha M', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (3, N'Rakshitha B', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (4, N'Jayasheela N', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (5, N'Magdalen M', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (6, N'Rakshitha B / MoonRaft', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (7, N'Chitralekha M / Practice', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (8, N'Rahul', 0)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (9, N'bharath', 1)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (10, N'Rahul', 1)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (11, N'Rahul', 1)
INSERT [dbo].[USTPOC] ([USTPOCId], [USTPOCName], [isDeleted]) VALUES (12, N'Rahu', 1)
SET IDENTITY_INSERT [dbo].[USTPOC] OFF
GO
SET IDENTITY_INSERT [dbo].[USTTPM] ON 

INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (1, N'Abdul Jabbarkarpoor', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (2, N'Anand Rao', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (3, N'Bharathi Inampudi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (4, N'Chandrashekar Rao', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (5, N'Ganesh Sathi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (6, N'Gowrishankar Krishnamurthy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (7, N'Harish Gowda', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (8, N'Harishkumar Polepalli', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (9, N'Jaismeen Sabharwal', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (10, N'Jenny Joy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (11, N'Jitendra Kotta', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (12, N'Lakshminarasimha Akella', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (13, N'Latha K', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (14, N'Maheswararao Namburi', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (15, N'Manoj D', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (16, N'Naga Kasireddy', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (17, N'Prem Singh', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (18, N'Raghu', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (19, N'Rajesh Sharma', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (20, N'Rao Kovuru', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (21, N'Ravi Ponugupati', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (22, N'Saravanan Sivagurunathan', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (23, N'Sesha Phani', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (24, N'Srinivas Chalamala', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (25, N'Surjit Singh', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (26, N'Udaya Punnani', 0)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (27, N'Vasu Kkk', 1)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (28, N'bharath', 1)
INSERT [dbo].[USTTPM] ([USTTPMId], [USTTPMName], [isDeleted]) VALUES (29, N'Vasu Kkk', 1)
SET IDENTITY_INSERT [dbo].[USTTPM] OFF
GO
ALTER TABLE [dbo].[Account] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Candidate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Country] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[DellManager] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Domain] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Location] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Login] ADD  DEFAULT ((1)) FOR [IsFirstLogin]
GO
ALTER TABLE [dbo].[Recruiter] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Region] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF_SOW_USTTPMId]  DEFAULT ((0)) FOR [USTTPMId]
GO
ALTER TABLE [dbo].[SOW] ADD  CONSTRAINT [DF__SOW__isDeleted__4D5F7D71]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[SOWCandidate] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Status] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Technology] ADD  CONSTRAINT [DF__Technolog__isDel__5E8A0973]  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTPOC] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[USTTPM] ADD  DEFAULT ((0)) FOR [isDeleted]
GO
ALTER TABLE [dbo].[Candidate]  WITH CHECK ADD  CONSTRAINT [FK_Candidate_Status] FOREIGN KEY([Status])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[Candidate] CHECK CONSTRAINT [FK_Candidate_Status]
GO
ALTER TABLE [dbo].[Location]  WITH CHECK ADD  CONSTRAINT [FK_Location_Region] FOREIGN KEY([RegionId])
REFERENCES [dbo].[Region] ([RegionId])
GO
ALTER TABLE [dbo].[Location] CHECK CONSTRAINT [FK_Location_Region]
GO
ALTER TABLE [dbo].[Roles]  WITH CHECK ADD  CONSTRAINT [FK_Roles_Permission] FOREIGN KEY([PermissionId])
REFERENCES [dbo].[Permission] ([PermissionId])
GO
ALTER TABLE [dbo].[Roles] CHECK CONSTRAINT [FK_Roles_Permission]
GO
ALTER TABLE [dbo].[RoleScreens]  WITH CHECK ADD  CONSTRAINT [FK_RoleScreens_Screens] FOREIGN KEY([ScreenId])
REFERENCES [dbo].[Screens] ([ScreenId])
GO
ALTER TABLE [dbo].[RoleScreens] CHECK CONSTRAINT [FK_RoleScreens_Screens]
GO
ALTER TABLE [dbo].[RoleTabs]  WITH CHECK ADD  CONSTRAINT [FK_RoleTabs_Roles] FOREIGN KEY([RoleId])
REFERENCES [dbo].[Roles] ([RoleId])
GO
ALTER TABLE [dbo].[RoleTabs] CHECK CONSTRAINT [FK_RoleTabs_Roles]
GO
ALTER TABLE [dbo].[RoleTabs]  WITH CHECK ADD  CONSTRAINT [FK_RoleTabs_Tabs] FOREIGN KEY([TabId])
REFERENCES [dbo].[Tabs] ([TabId])
GO
ALTER TABLE [dbo].[RoleTabs] CHECK CONSTRAINT [FK_RoleTabs_Tabs]
GO
ALTER TABLE [dbo].[SecurityAnswer]  WITH CHECK ADD FOREIGN KEY([LoginId])
REFERENCES [dbo].[Login] ([LoginId])
GO
ALTER TABLE [dbo].[SecurityAnswer]  WITH CHECK ADD FOREIGN KEY([QuestionId1])
REFERENCES [dbo].[SecurityQuestion] ([QuestionId])
GO
ALTER TABLE [dbo].[SecurityAnswer]  WITH CHECK ADD FOREIGN KEY([QuestionId2])
REFERENCES [dbo].[SecurityQuestion] ([QuestionId])
GO
ALTER TABLE [dbo].[SecurityAnswer]  WITH CHECK ADD FOREIGN KEY([QuestionId3])
REFERENCES [dbo].[SecurityQuestion] ([QuestionId])
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_DellManager] FOREIGN KEY([DellManagerId])
REFERENCES [dbo].[DellManager] ([DellManagerId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_DellManager]
GO
ALTER TABLE [dbo].[SOW]  WITH CHECK ADD  CONSTRAINT [FK_SOW_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOW] CHECK CONSTRAINT [FK_SOW_Status]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Candidate] FOREIGN KEY([CandidateId])
REFERENCES [dbo].[Candidate] ([CandidateId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Candidate]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_SOW] FOREIGN KEY([SowId])
REFERENCES [dbo].[SOW] ([SowId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_SOW]
GO
ALTER TABLE [dbo].[SOWCandidate]  WITH CHECK ADD  CONSTRAINT [FK_SOWCandidate_Status] FOREIGN KEY([StatusId])
REFERENCES [dbo].[Status] ([StatusId])
GO
ALTER TABLE [dbo].[SOWCandidate] CHECK CONSTRAINT [FK_SOWCandidate_Status]
GO
ALTER TABLE [dbo].[Technology]  WITH CHECK ADD  CONSTRAINT [FK_Technology_Domain] FOREIGN KEY([DomainId])
REFERENCES [dbo].[Domain] ([DomainId])
GO
ALTER TABLE [dbo].[Technology] CHECK CONSTRAINT [FK_Technology_Domain]
GO
/****** Object:  StoredProcedure [dbo].[Account_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Account_proc] (
	@AccountId INT
	,@AccountName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Account
				WHERE LOWER(AccountName) = LOWER(@AccountName)
				)
		BEGIN
			INSERT INTO Account (
				AccountName
				,isDeleted
				)
			VALUES (
				@AccountName
				,0
				)
				SET @ReturnMsg = 'Account Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM Account
		WHERE isDeleted = 0
		ORDER BY AccountId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Account
		WHERE AccountId = @AccountId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE Account
		SET AccountName = @AccountName
		WHERE AccountId = @AccountId

		SET @ReturnMsg = 'Account Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		UPDATE Account
		SET isDeleted = 1
		WHERE AccountId = @AccountId

		SET @ReturnMsg = 'Account Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[ChangePassword_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ChangePassword_proc] (
	@EmailId VARCHAR(100)
	,@OldPassword VARCHAR(50)
	,@NewPassword VARCHAR(50)
	,@Type VARCHAR(50)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';
DECLARE @LoginId INT;

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF EXISTS (
				SELECT *
				FROM LOGIN
				WHERE EmailId = @EmailId
					AND LoginPassword = @OldPassword
				)
		BEGIN
			UPDATE LOGIN
			SET LoginPassword = @NewPassword
			WHERE EmailId = @EmailId

			SET @ReturnMsg = 'New Password updated successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Old Password does not match'
		END
	END
	ELSE IF (@Type = 'UpdatePWDForForgot')
	BEGIN
		IF EXISTS (
				SELECT *
				FROM LOGIN
				WHERE EmailId = @EmailId
				)
		BEGIN
			UPDATE LOGIN
			SET LoginPassword = @NewPassword
			WHERE EmailId = @EmailId

			SET @ReturnMsg = 'New Password updated successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Email Not Found'
		END
	END
	SELECT @ReturnMsg AS STATUS 
END

GO
/****** Object:  StoredProcedure [dbo].[DashboardCandidateStats]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE       PROCEDURE [dbo].[DashboardCandidateStats]   
@PeriodType nvarchar (20)  
As 
DECLARE @StartDate DATE, @EndDate DATE
BEGIN

IF(@PeriodType='Weekly')
BEGIN 
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

ELSE IF(@PeriodType='Fortnight')
BEGIN 
SET @StartDate= DATEADD(wk,-2,DATEADD(wk,DATEDIFF(wk,6,GETDATE()),6));
SET @EndDate= DATEADD(DAY,DATEDIFF(DAY,5,GETDATE())/7*7,5);
END

ELSE IF(@PeriodType='Monthly')
BEGIN 
SET @StartDate= DATEADD(m,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
SET @EndDate= DATEADD(d,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
END

ELSE IF(@PeriodType='Quarterly')
BEGIN 
SET @StartDate= DATEADD(q,DATEDIFF(q,0,GETDATE()),0);
SET @EndDate= DATEADD(d,-1,DATEADD(q, DATEDIFF(q,0,GETDATE()) +1,0));
END

ELSE
BEGIN
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

--select @StartDate;
--select @EndDate;


SELECT DISTINCT 'SO' as Category, C.STATUS AS [NAME],count(*) AS [Count]  FROM [dbo].[Candidate] C 
                                           INNER JOIN [dbo].[SOWCandidate] SC ON C.CandidateId =SC.CandidateId
										   INNER JOIN [dbo].[SOW] S ON SC.SowId =S.SowId 
										   WHERE (convert(date,C.JoiningDate) >= @StartDate AND convert(date,C.JoiningDate) <= @EndDate ) and Isnull(C.isDeleted,0)=0 
										   GROUP BY STATUS
UNION ALL
SELECT DISTINCT 'Location' as Category, LOCATION AS [NAME], count(*) AS [Count] FROM [dbo].[Candidate] 
                                         where (convert(date,JoiningDate) >= @StartDate AND convert(date,JoiningDate) <= @EndDate ) 
										                       and Isnull(isDeleted,0)=0  GROUP BY LOCATION
                                                                 
End
GO
/****** Object:  StoredProcedure [dbo].[DashboardStats]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 


CREATE      PROCEDURE [dbo].[DashboardStats]   
@PeriodType nvarchar (20)  
As 
DECLARE @StartDate DATE, @EndDate DATE
BEGIN

 

IF(@PeriodType='Weekly')
BEGIN 
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

 

ELSE IF(@PeriodType='Fortnight')
BEGIN 
SET @StartDate= DATEADD(wk,-2,DATEADD(wk,DATEDIFF(wk,6,GETDATE()),6));
SET @EndDate= DATEADD(DAY,DATEDIFF(DAY,5,GETDATE())/7*7,5);
END

 

ELSE IF(@PeriodType='Monthly')
BEGIN 
SET @StartDate= DATEADD(m,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
SET @EndDate= DATEADD(d,-1,DATEADD(mm, DATEDIFF(m,0,GETDATE()),0));
END

 

ELSE IF(@PeriodType='Quarterly')
BEGIN 
SET @StartDate= DATEADD(q,DATEDIFF(q,0,GETDATE()),0);
SET @EndDate= DATEADD(d,-1,DATEADD(q, DATEDIFF(q,0,GETDATE()) +1,0));
END

 

ELSE
BEGIN
SET @StartDate= DATEADD(DAY,1-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
--SET @EndDate= DATEADD(DAY,7-DATEPART(WEEKDAY,GETDATE()),CAST(GETDATE() AS DATE));
SET @EndDate= CAST(GETDATE() AS DATE);
END

 

--select @StartDate;
--select @EndDate;

 


SELECT 'Status' as Category,st.StatusName AS [Name] ,count(so.StatusId) AS [Count]     
FROM [dbo].[SOW] so     
RIGHT JOIN [dbo].[Status] st ON st.StatusId =so.StatusId AND Isnull(so.isDeleted,0)=0  
                                AND (Convert(date,so.RequestCreationDate) >= @StartDate AND Convert(date,so.RequestCreationDate) <= @EndDate)
                                group by st.StatusName  
UNION ALL    
SELECT 'Domain' as Category, D.DomainName AS [Name], COUNT(S.TechnologyId) AS [Count]
FROM [dbo].[Domain] D
LEFT JOIN [dbo].[Technology] T ON T.DomainId = D.DomainId AND ISNULL(D.isDeleted, 0) = 0
LEFT JOIN [dbo].[SOW] S ON S.TechnologyId = T.TechnologyId AND ISNULL(S.isDeleted, 0) = 0
                           AND (CONVERT(date, S.RequestCreationDate) >= @StartDate AND CONVERT(date, S.RequestCreationDate) <= @EndDate)
GROUP BY D.DomainName
UNION ALL    
SELECT 'Region' as Category,R.Region AS [Name],count(so.RegionId) AS [Count]     
FROM [dbo].[SOW] so     
RIGHT JOIN [dbo].[Region] R ON R.RegionId =so.RegionId AND Isnull(so.isDeleted,0)=0 
                             AND (convert(date,so.RequestCreationDate) >= @StartDate AND convert(date,so.RequestCreationDate) <= @EndDate)
                             group by R.Region    
End
GO
/****** Object:  StoredProcedure [dbo].[DellManager_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[DellManager_proc] (
	@DellManagerId INT
	,@DellManagerName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM DellManager
				WHERE LOWER(DellManagerName) = LOWER(@DellManagerName)
				)
		BEGIN
			INSERT INTO DellManager (DellManagerName)
			VALUES (@DellManagerName)

			SET @ReturnMsg = 'DellManager Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM DellManager
		WHERE isDeleted = 0
		ORDER BY DellManagerId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM DellManager
		WHERE DellManagerId = @DellManagerId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE DellManager
		SET DellManagerName = @DellManagerName
		WHERE DellManagerId = @DellManagerId

		SET @ReturnMsg = 'DellManager Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		UPDATE DellManager
		SET isDeleted = 1
		WHERE DellManagerId = @DellManagerId

		SET @ReturnMsg = 'DellManager Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[Domain_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Domain_proc] (
	@DomainId INT
	,@DomainName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Domain
				WHERE LOWER(DomainName) = LOWER(@DomainName)
				)
		BEGIN
			INSERT INTO Domain (DomainName)
			VALUES (UPPER(@DomainName))

			SET @ReturnMsg = 'Domain Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM Domain
		WHERE isDeleted = 0
		ORDER BY DomainId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Domain
		WHERE DomainId = @DomainId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Domain
				WHERE DomainName = @DomainName
				)
		BEGIN
			UPDATE Domain
			SET DomainName = UPPER(@DomainName)
			WHERE DomainId = @DomainId

			SET @ReturnMsg = 'Domain Updated Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM Domain  where DomainId=@DomainId    
		UPDATE Domain
		SET isDeleted = 1
		WHERE DomainId = @DomainId

		SET @ReturnMsg = 'Domain Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[editlogin]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[editlogin] @EmailId VARCHAR(100)
	,@FailureAttempts INT
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';
BEGIN
	IF EXISTS (
			SELECT *
			FROM [Login]
			WHERE EmailId = @EmailId
			)
	BEGIN
		UPDATE LOGIN
		SET FailureAttempts = @FailureAttempts
		WHERE EmailId = @EmailId;
	END

	BEGIN
		UPDATE LOGIN
		SET islock = 0
		WHERE FailureAttempts < 3
		SET @ReturnMsg = 'Reset Successfull'
	END
	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[Location_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Location_proc] (
	@LocationId INT
	,@Location NVARCHAR(50)
	,@RegionId INT
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Location
				WHERE (LOWER(Location) = LOWER(@Location) and LOWER(RegionId) = LOWER(@RegionId))
				)
		BEGIN
			INSERT INTO Location (
				Location
				,RegionId
				)
			VALUES (
				UPPER(@Location)
				,@RegionId
				)

			SET @ReturnMsg = 'Location Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM Location
		WHERE isDeleted = 0
		ORDER BY LocationId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Location
		WHERE LocationId = @LocationId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE Location
		SET Location = UPPER(@Location)
			,RegionId = @RegionId
		WHERE LocationId = @LocationId

		SET @ReturnMsg = 'Location Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		-- DELETE FROM Location WHERE LocationId=@LocationId 
		UPDATE Location
		SET isDeleted = 1
		WHERE LocationId = @LocationId

		SET @ReturnMsg = 'Location Deleted Successfully'
	END
	ELSE IF (@Type = 'getbyregionid')
	BEGIN
		SELECT *
		FROM Location
		WHERE RegionId = @RegionId
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[loginproc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[loginproc] (
	@EmailId VARCHAR(100)
	,@LoginPassword VARCHAR(100)
	)
AS
BEGIN
	DECLARE @FailureAttempts INT;
	DECLARE @listStr VARCHAR(MAX);
	DECLARE @listTabs VARCHAR(MAX);

	IF NOT EXISTS (
			SELECT *
			FROM [Login]
			WHERE EmailId = @EmailId
				AND IsDeleted = 0
			)
	BEGIN
		SELECT '' AS LoginName
			,'' AS EmailId
			,'' AS RoleName
			,'' AS ScreenNames
			,'' As TabNames
			,'' AS PermissionName
			,0 AS FailureAttempts
			,0 AS Islock
			,'0' AS [status];
	END

	IF EXISTS (
			SELECT *
			FROM [Login]
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword
				AND FailureAttempts < 3
			)
	BEGIN
		IF EXISTS (
				SELECT *
				FROM [Login]
				WHERE EmailId = @EmailId
					AND IsFirstLogin = 1
				)
		BEGIN
			

			SELECT @listStr = COALESCE(@listStr + ',', '') + 'ChangePassword' + ',' + 'SecurityPage'

			SELECT DISTINCT L.LoginName
				,L.EmailId
				,'' AS RoleName
				,'' AS PermissionName
				,@listStr AS 'ScreenNames'
				,'' As TabNames
				,'1' AS [status]
				,0 AS FailureAttempts
				,L.Islock AS Islock
				,L.IsFirstLogin AS IsFirstLogin
			FROM [Login] L
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword
		END
		ELSE
		BEGIN
				
			SELECT @listStr = COALESCE(@listStr + ',', '') + S.ScreenName
			FROM [Login] L
			INNER JOIN Roles R ON L.RoleId = R.RoleId
			INNER JOIN RoleScreens RS ON R.RoleId = RS.RoleId
			INNER JOIN Screens S ON RS.ScreenId = S.ScreenId
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword

			SELECT @listTabs = COALESCE(@listTabs + ',', '') + T.TabName
			FROM [Login] L
			INNER JOIN Roles R ON L.RoleId = R.RoleId
			INNER JOIN RoleTabs RT ON R.RoleId = RT.RoleId
			INNER JOIN Tabs T ON RT.Tabid = T.TabId
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword

			UPDATE LOGIN
			SET FailureAttempts = 0
			WHERE EmailId = @EmailId
				AND FailureAttempts < 3

			SELECT DISTINCT L.LoginName
				,L.EmailId
				,R.RoleName
				,P.PermissionName
				,@listStr AS 'ScreenNames'
				,@listTabs As 'TabNames'
				,'1' AS [status]
				,L.FailureAttempts AS FailureAttempts
				,L.Islock AS Islock
				,L.IsFirstLogin AS IsFirstLogin
			FROM [Login] L
			INNER JOIN Roles R ON L.RoleId = R.RoleId
			INNER JOIN Permission P ON R.PermissionId = P.PermissionId
			INNER JOIN RoleScreens RS ON R.RoleId = RS.RoleId
			INNER JOIN Screens S ON RS.ScreenId = S.ScreenId
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword

			SELECT @EmailId = EmailId
			FROM LOGIN
			WHERE EmailId = @EmailId
				AND LoginPassword = @LoginPassword
		END
	END
	ELSE
	BEGIN
		UPDATE LOGIN
		SET FailureAttempts = FailureAttempts + 1
		WHERE EmailId = @EmailId

		IF EXISTS (
				SELECT *
				FROM [Login]
				WHERE EmailId = @EmailId
				)
		BEGIN
			UPDATE LOGIN
			SET islock = 1
			WHERE FailureAttempts = 3
		END

		SELECT '' AS LoginName
			,'' AS EmailId
			,'' AS RoleName
			,'' AS ScreenNames
			,'' As TabsNames
			,'' AS PermissionName
			,'0' AS [status]
			,FailureAttempts AS FailureAttempts
			,Islock AS Islock
		FROM LOGIN
		WHERE EmailId = @EmailId;
	END
END
GO
/****** Object:  StoredProcedure [dbo].[Recruiter_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Recruiter_proc] (
	@RecruiterId INT
	,@RecruiterName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Recruiter
				WHERE LOWER(RecruiterName) = LOWER(@RecruiterName)
				)
		BEGIN
			INSERT INTO Recruiter (RecruiterName)
			VALUES (@RecruiterName)

			SET @ReturnMsg = 'Recruiter Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM Recruiter
		WHERE isDeleted = 0
		ORDER BY RecruiterId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Recruiter
		WHERE RecruiterId = @RecruiterId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE Recruiter
		SET RecruiterName = @RecruiterName
		WHERE RecruiterId = @RecruiterId

		SET @ReturnMsg = 'Recruiter Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM Recruiter WHERE RecruiterId= @RecruiterId  
		UPDATE Recruiter
		SET isDeleted = 1
		WHERE RecruiterId = @RecruiterId

		SET @ReturnMsg = 'Recruiter Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[Region_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Region_proc] (
	@RegionId INT
	,@Region NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Region
				WHERE LOWER(Region) = LOWER(@Region)
				)
		BEGIN
			INSERT INTO Region (Region)
			VALUES (UPPER(@Region))

			SET @ReturnMsg = 'Region Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Records Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM Region
		WHERE isDeleted = 0
		ORDER BY RegionId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Region
		WHERE RegionId = @RegionId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE Region
		SET Region = UPPER(@Region)
		WHERE RegionId = @RegionId

		SET @ReturnMsg = 'Region Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM Region  where RegionId=@RegionId 
		UPDATE Region
		SET isDeleted = 1
		WHERE RegionId = @RegionId

		SET @ReturnMsg = 'Region Updated Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[Registration_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Registration_proc] (
	@LoginName NVARCHAR(50)
	,@LoginPassword NVARCHAR(100)
	,@EmailId NVARCHAR(100)
	,@RoleId INT
	,@LoginId INT
	,@Type NVARCHAR(50)
	,@FailureAttempts INT
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM LOGIN
				WHERE EmailId = @EmailId
				)
		BEGIN
			INSERT INTO LOGIN (
				LoginName
				,LoginPassword
				,EmailId
				,RoleId
				,FailureAttempts
				,Islock
				,IsDeleted
				,IsFirstLogin
				)
			VALUES (
				@LoginName
				,@LoginPassword
				,@EmailId
				,@RoleId
				,@FailureAttempts
				,0
				,0
				,1
				)

			SET @ReturnMsg = 'User Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT RoleId
			,RoleName
		FROM roles;
	END
	ELSE IF (@Type = 'getuser')
	BEGIN
	
		SELECT l.LoginId
			,l.LoginName
			,l.EmailId
			,r.RoleName
			,l.RoleId
		FROM LOGIN l
		INNER JOIN roles r ON L.RoleId = R.RoleId
WHERE l.IsDeleted = 0;

	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE LOGIN
		SET 
			RoleId = @RoleId,
			LoginName=@LoginName
		WHERE LoginId = @LoginId

		SET @ReturnMsg = 'User data Updated Successfully'
	END
	ELSE IF (@Type = 'delete')
	BEGIN
		UPDATE LOGIN
		SET [IsDeleted] = 1
		WHERE LoginId = @LoginId
		SET @ReturnMsg = 'User Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[SecurityAns_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SecurityAns_proc] (
	@AnswerId INT
	,@EmailId NVARCHAR(100)
	,@QuestionId1 INT
	,@Answer1 NVARCHAR(100)
	,@QuestionId2 INT
	,@Answer2 NVARCHAR(100)
	,@QuestionId3 INT
	,@Answer3 NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
BEGIN
	IF (@Type = 'post')
	BEGIN
		INSERT INTO SecurityAnswer (
			LoginId
			,QuestionId1
			,Answer1
			,QuestionId2
			,Answer2
			,QuestionId3
			,Answer3
			)
		VALUES (
			(
				SELECT LoginId
				FROM dbo.LOGIN
				WHERE EmailId = @EmailId
				)
			,@QuestionId1
			,@Answer1
			,@QuestionId2
			,@Answer2
			,@QuestionId3
			,@Answer3
			);
		UPDATE Login
		SET IsFirstLogin=0;
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT AnswerId
			,LoginId
			,QuestionId1
			,Answer1
			,QuestionId2
			,Answer2
			,QuestionId3
			,Answer3
		FROM SecurityAnswer
		WHERE (
				SELECT LoginId
				FROM dbo.LOGIN
				WHERE EmailId = @EmailId
				) = dbo.SecurityAnswer.LoginId
	END
	ELSE IF (@Type = 'getquestions')
	BEGIN
		SELECT QuestionId1
			,QuestionId2
			,QuestionId3
		FROM SecurityAnswer
		WHERE (
				SELECT LoginId
				FROM dbo.LOGIN
				WHERE EmailId = @EmailId
				) = dbo.SecurityAnswer.LoginId
	END
	ELSE IF (@Type = 'update')
		UPDATE SecurityAnswer
		SET Answer1 = @Answer1
			,QuestionId1 = @QuestionId1
			,Answer2 = @Answer2
			,QuestionId2 = @QuestionId2
			,Answer3 = @Answer3
			,QuestionId3 = @QuestionId3
		WHERE (
				SELECT LoginId
				FROM dbo.LOGIN
				WHERE EmailId = @EmailId
				) = dbo.SecurityAnswer.LoginId
END
GO
/****** Object:  StoredProcedure [dbo].[SecurityQues_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE procedure [dbo].[SecurityQues_proc]
(
       @QuestionId   int,
       @Question nvarchar(100),    
       @Type nvarchar(100)
)
AS 
BEGIN
       IF(@Type='get')    
       BEGIN    
              SELECT * FROM SecurityQuestion order by QuestionId desc    
       END  
       ELSE IF(@Type='getid')    
       BEGIN    
              SELECT * FROM SecurityQuestion where QuestionId = @QuestionId
       END 
END

GO
/****** Object:  StoredProcedure [dbo].[sow_date]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sow_date]
(            
@SowId int,   
@SoName nvarchar(100) NULL,     
@JRCode nvarchar(10),            
@RequestCreationDate datetime,            
@AccountId int Null,            
@TechnologyId nvarchar(500) NULL,            
@Role nvarchar(100) NULL,            
@LocationId int null , 
@RegionId int null , 
@TargetOpenPositions int NULL,            
@PositionsTobeClosed int NULL,            
@USTPOCId   int null ,         
@RecruiterId  int null ,           
@USTTPMId    int null ,         
@DellManagerId   int null ,   
@StatusId int NULL,            
@Band nvarchar(100) NULL,            
@ProjectId nvarchar(100) NULL,            
@AccountManager nvarchar(200) NULL,            
@ExternalResource nvarchar(100) NULL,            
@InternalResource nvarchar(100) NULL,     
@StartDate datetime,
@EndDate  datetime,
@Type nvarchar(100),
@Onboardingdate DATETIME)
as            
Begin             

 

 

 

if(@Type='getdate')          
begin          
select
    SowId,
    SoName,
    JRCode,
    RequestCreationDate,
    sow.AccountId,
    sow.TechnologyId,
    [Role],
    sow.LocationId,
    sow.RegionId,
    TargetOpenPositions,
    PositionsTobeClosed,
    sow.USTPOCId,
    sow.RecruiterId,
    sow.USTTPMId,
    sow.DellManagerId,
    sow.StatusId,
    Band,
    ProjectId,
    AccountManager,
    ExternalResource,
    InternalResource,
    SOW.isDeleted,
    Account.AccountName,
    Technology.TechnologyName,
    [Location].[Location],
    Region.Region,
    USTPOC.USTPOCName,
    Recruiter.RecruiterName,
    USTTPM.USTTPMName,
    DellManager.DellManagerName,
    [Status].StatusName,
	Onboardingdate 
from SOW 
inner join Account on sow.AccountId=Account.AccountId
inner join Technology on sow.TechnologyId=Technology.TechnologyId
inner join [Location] on sow.LocationId=[Location].LocationId
inner join Region on sow.RegionId=Region.RegionId
inner join USTPOC on sow.USTPOCId=USTPOC.USTPOCId
inner join Recruiter on sow.RecruiterId=Recruiter.RecruiterId
inner join USTTPM on sow.USTTPMId=USTTPM.USTTPMId
inner join DellManager on sow.DellManagerId=DellManager.DellManagerId
inner join [Status] on sow.StatusId=[Status].StatusId
where  (CONVERT(date, RequestCreationDate) between  @StartDate and  @EndDate) and SOW.isDeleted=0          
END 
end

 
GO
/****** Object:  StoredProcedure [dbo].[Sow_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Sow_proc] (
	@SowId INT
	,@SoName NVARCHAR(100) NULL
	,@JRCode NVARCHAR(10)
	,@RequestCreationDate DATETIME
	,@AccountId INT NULL
	,@TechnologyId NVARCHAR(500) NULL
	,@Role NVARCHAR(100) NULL
	,@LocationId INT NULL
	,@RegionId INT NULL
	,@TargetOpenPositions INT NULL
	,@PositionsTobeClosed INT NULL
	,@USTPOCId INT NULL
	,@RecruiterId INT NULL
	,@USTTPMId INT NULL
	,@DellManagerId INT NULL
	,@StatusId INT NULL
	,@Band NVARCHAR(100) NULL
	,@ProjectId NVARCHAR(100) NULL
	,@AccountManager NVARCHAR(200) NULL
	,@ExternalResource NVARCHAR(100) NULL
	,@InternalResource NVARCHAR(100) NULL
	,@Type NVARCHAR(100)
	,@Onboardingdate DATETIME
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'insert')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM SOW
				WHERE JRCode = @JRCode
				)
		BEGIN
			BEGIN TRY
				INSERT INTO SOW (
					SoName
					,JRCode
					,RequestCreationDate
					,AccountId
					,TechnologyId
					,[Role]
					,LocationId
					,RegionId
					,TargetOpenPositions
					,PositionsTobeClosed
					,USTPOCId
					,RecruiterId
					,USTTPMId
					,DellManagerId
					,StatusId
					,Band
					,ProjectId
					,AccountManager
					,ExternalResource
					,InternalResource
					,Onboardingdate
					)
				VALUES (
					@SoName
					,@JRCode
					,@RequestCreationDate
					,@AccountId
					,@TechnologyId
					,@Role
					,@LocationId
					,@RegionId
					,@TargetOpenPositions
					,@PositionsTobeClosed
					,@USTPOCId
					,@RecruiterId
					,@USTTPMId
					,@DellManagerId
					,@StatusId
					,@Band
					,@ProjectId
					,@AccountManager
					,@ExternalResource
					,@InternalResource
					,@Onboardingdate
					)

				SET @ReturnMsg = 'So Details Added Successfully'
			END TRY

			BEGIN CATCH
				SET @ReturnMsg = 'Something went wrong'
			END CATCH
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END

		SELECT @ReturnMsg AS STATUS
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT SowId
			,SoName
			,JRCode
			,RequestCreationDate
			,sow.AccountId
			,sow.TechnologyId
			,[Role]
			,sow.LocationId
			,sow.RegionId
			,TargetOpenPositions
			,PositionsTobeClosed
			,sow.USTPOCId
			,sow.RecruiterId
			,sow.USTTPMId
			,sow.DellManagerId
			,sow.StatusId
			,Band
			,ProjectId
			,AccountManager
			,ExternalResource
			,InternalResource
			,SOW.isDeleted
			,Account.AccountName
			,Technology.TechnologyName
			,[Location].[Location]
			,Region.Region
			,USTPOC.USTPOCName
			,Recruiter.RecruiterName
			,USTTPM.USTTPMName
			,DellManager.DellManagerName
			,[Status].StatusName
			,Onboardingdate
		FROM SOW
		INNER JOIN Account ON sow.AccountId = Account.AccountId
		INNER JOIN Technology ON sow.TechnologyId = Technology.TechnologyId
		INNER JOIN [Location] ON sow.LocationId = [Location].LocationId
		INNER JOIN Region ON sow.RegionId = Region.RegionId
		INNER JOIN USTPOC ON sow.USTPOCId = USTPOC.USTPOCId
		INNER JOIN Recruiter ON sow.RecruiterId = Recruiter.RecruiterId
		INNER JOIN USTTPM ON sow.USTTPMId = USTTPM.USTTPMId
		INNER JOIN DellManager ON sow.DellManagerId = DellManager.DellManagerId
		INNER JOIN [Status] ON sow.StatusId = [Status].StatusId
		WHERE SOW.isDeleted = 0
		ORDER BY SowId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT SowId
			,SoName
			,JRCode
			,RequestCreationDate
			,sow.AccountId
			,sow.TechnologyId
			,[Role]
			,sow.LocationId
			,sow.RegionId
			,TargetOpenPositions
			,PositionsTobeClosed
			,sow.USTPOCId
			,sow.RecruiterId
			,sow.USTTPMId
			,sow.DellManagerId
			,sow.StatusId
			,Band
			,ProjectId
			,AccountManager
			,ExternalResource
			,InternalResource
			,SOW.isDeleted
			,Account.AccountName
			,Technology.TechnologyName
			,[Location].[Location]
			,Region.Region
			,USTPOC.USTPOCName
			,Recruiter.RecruiterName
			,USTTPM.USTTPMName
			,DellManager.DellManagerName
			,[Status].StatusName
			,Onboardingdate
		FROM SOW
		INNER JOIN Account ON sow.AccountId = Account.AccountId
		INNER JOIN Technology ON sow.TechnologyId = Technology.TechnologyId
		INNER JOIN [Location] ON sow.LocationId = [Location].LocationId
		INNER JOIN Region ON sow.RegionId = Region.RegionId
		INNER JOIN USTPOC ON sow.USTPOCId = USTPOC.USTPOCId
		INNER JOIN Recruiter ON sow.RecruiterId = Recruiter.RecruiterId
		INNER JOIN USTTPM ON sow.USTTPMId = USTTPM.USTTPMId
		INNER JOIN DellManager ON sow.DellManagerId = DellManager.DellManagerId
		INNER JOIN [Status] ON sow.StatusId = [Status].StatusId
		WHERE SowId = @SowId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE SOW
		SET SoName = @SoName
			,JRCode = @JRCode
			,RequestCreationDate = @RequestCreationDate
			,AccountId = @AccountId
			,TechnologyId = @TechnologyId
			,[Role] = @Role
			,LocationId = @LocationId
			,RegionId = @RegionId
			,TargetOpenPositions = @TargetOpenPositions
			,PositionsTobeClosed = @PositionsTobeClosed
			,USTPOCId = @USTPOCId
			,RecruiterId = @RecruiterId
			,USTTPMId = @USTTPMId
			,DellManagerId = @DellManagerId
			,StatusId = @StatusId
			,Band = @Band
			,ProjectId = @ProjectId
			,AccountManager = @AccountManager
			,ExternalResource = @ExternalResource
			,InternalResource = @InternalResource
			,Onboardingdate = @Onboardingdate
		WHERE SowId = @SowId
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		IF EXISTS (
				SELECT *
				FROM SOW
				WHERE SowId = @SowId
					AND IsDeleted = 0
				)
		BEGIN
			IF NOT EXISTS (
					SELECT *
					FROM SOWCandidate
					WHERE SowId = @SowId
						AND IsDeleted = 0
					)
			BEGIN
				UPDATE SOW
				SET isDeleted = 1
				WHERE SowId = @SowId

				SET @ReturnMsg = 'SO Deleted Successfully'
			END
			ELSE
			BEGIN
				SET @ReturnMsg = 'Mapping Exists for this SO with Candidate Please unmap and then delete'
			END

			SET @ReturnMsg = 'Data Deleted Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Record Not Found'
		END

		SELECT @ReturnMsg AS STATUS
	END
END
GO
/****** Object:  StoredProcedure [dbo].[SowCandidate_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 

CREATE PROCEDURE [dbo].[SowCandidate_proc] (
    @SOW_CandidateId INT
    ,@SowId INT
    ,@CandidateId INT
    ,@StatusId INT
    ,@Type NVARCHAR(100)
    )
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

 

BEGIN
    IF (@Type = 'post')
    BEGIN
        IF NOT EXISTS (
                SELECT *
                FROM SOWCandidate
                WHERE CandidateId = @CandidateId and isDeleted = 0
                )
        BEGIN
            INSERT INTO SOWCandidate (
                SowId
                ,CandidateId
                ,StatusId
                )
            VALUES (
                @SowId
                ,@CandidateId
                ,@StatusId
                )

 

            SET @ReturnMsg = 'Candidate Mapped Successfully'
        END
        ELSE
        BEGIN
            SET @ReturnMsg = 'Candidate already mapped Mapped'
        END
    END
    ELSE IF (@Type = 'get')
    BEGIN
        SELECT SOW_CandidateId
            ,SOWCandidate.SowId
            ,SOWCandidate.CandidateId
            ,SOWCandidate.StatusId
            ,SOWCandidate.isDeleted
            ,SOW.SoName
            ,Candidate.CandidateName
            ,[Status].StatusName
        FROM SOWCandidate
        INNER JOIN SOW ON sow.SowId = SOWCandidate.SowId
        INNER JOIN Candidate ON Candidate.CandidateId = SOWCandidate.CandidateId
        INNER JOIN [Status] ON [Status].StatusId = SOWCandidate.StatusId
        WHERE SOWCandidate.isDeleted = 0
        ORDER BY SOW_CandidateId DESC
    END
    ELSE IF (@Type = 'getid')
    BEGIN
        SELECT SOW_CandidateId
            ,SOWCandidate.SowId
            ,SOWCandidate.CandidateId
            ,SOWCandidate.StatusId
            ,SOWCandidate.isDeleted
            ,SOW.SoName
            ,Candidate.CandidateName
            ,[Status].StatusName
        FROM SOWCandidate
        INNER JOIN SOW ON sow.SowId = SOWCandidate.SowId
        INNER JOIN Candidate ON Candidate.CandidateId = SOWCandidate.CandidateId
        INNER JOIN [Status] ON [Status].StatusId = SOWCandidate.StatusId
        WHERE SOW_CandidateId = @SOW_CandidateId and SOWCandidate.isDeleted = 0
    END
    ELSE IF (@Type = 'update')
    BEGIN
            UPDATE SOWCandidate
            SET SowId = @SowId
                ,CandidateId = @CandidateId
                ,StatusId = @StatusId
            WHERE SOW_CandidateId = @SOW_CandidateId

 

            SET @ReturnMsg = 'Candidate Mapping Updated Successfully'
    END
    ELSE IF (@Type = 'Delete')
    BEGIN
        --DELETE FROM SOWCandidate WHERE SOW_CandidateId=@SOW_CandidateId
        UPDATE SOWCandidate
        SET isDeleted = 1
        WHERE SOW_CandidateId = @SOW_CandidateId

 

        SET @ReturnMsg = 'Candidate Mapping Deleted Successfully'
    END

 

    SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[Status_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[Status_proc]
(
	@StatusId	int,
	@StatusName nvarchar(100),
	@Type		nvarchar(100),
	@StatusType	nvarchar(100)
)
AS 
BEGIN
	IF(@Type='post')
	BEGIN 
		INSERT INTO Status(StatusName, [StatusType] ) VALUES (@StatusName, @StatusType)
	END

	ELSE IF(@Type='get')    
	BEGIN    
		SELECT * FROM Status where Isnull(IsDeleted,0) = 0  order by StatusId desc    
	END   

	ELSE IF(@Type='getid')    
	BEGIN    
		SELECT * FROM Status where StatusId = @StatusId
	END 
	ELSE IF(@Type='getstatustype')    
	BEGIN    
		SELECT * FROM Status where StatusType = @StatusType
	END 

	ELSE IF(@Type='update')    
	BEGIN    
		update Status SET StatusName = @StatusName where StatusId = @StatusId
	END

	ELSE IF(@Type='Delete')    
	BEGIN    
	 update Status SET IsDeleted = 1 where StatusId = @StatusId
	END 
END
GO
/****** Object:  StoredProcedure [dbo].[Technology_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[Technology_proc] (
	@TechnologyId INT
	,@TechnologyName NVARCHAR(100)
	,@DomainId INT
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Technology
				WHERE TechnologyName = @TechnologyName
					AND DomainId = @DomainId
				)
		BEGIN
			INSERT INTO Technology (
				TechnologyName
				,DomainId
				)
			VALUES (
				@TechnologyName
				,@DomainId
				)

			SET @ReturnMsg = 'Technology Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT TechnologyId
			,TechnologyName
			,tech.DomainId
			,DomainName
		FROM Technology tech
		INNER JOIN Domain ON Tech.DomainId = Domain.DomainId
		WHERE Isnull(tech.isDeleted, 0) = 0
		ORDER BY TechnologyId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM Technology
		WHERE TechnologyId = @TechnologyId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM Technology
				WHERE TechnologyName = @TechnologyName
					AND DomainId = @DomainId
				)
		BEGIN
			UPDATE Technology
			SET TechnologyName = @TechnologyName
				,DomainId = @DomainId
			WHERE TechnologyId = @TechnologyId

			SET @ReturnMsg = 'Technology Updated Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM Technology  where TechnologyId=@TechnologyId   
		UPDATE Technology
		SET IsDeleted = 1
		WHERE TechnologyId = @TechnologyId

		SET @ReturnMsg = 'Technology Deleted Successfully'
	END
	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[usp_addCandidateData]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_addCandidateData]
@CandidateName nvarchar(100),
@candidateUid nvarchar(100),
@MobileNo nvarchar(50),
@Gender nvarchar(20),
@DOB date,
@EmailId nvarchar(50),
@Location nvarchar(50),
@Pincode nvarchar(10),
@Address nvarchar(max),
@Status nvarchar(50),
@Skills nvarchar(max),
@JoiningDate datetime,
@IsInternal bit
as
DECLARE @ReturnMsg NVARCHAR(200)='';
begin
IF not exists (SELECT * FROM Candidate WHERE  EmailId=@EmailId)
BEGIN
set nocount on
BEGIN TRY
insert into Candidate(CandidateName,CandidateUid,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal)
values(@CandidateName,@candidateUid,@Gender,@MobileNo,@DOB,@EmailId,@Location,@Pincode,@Address,@Status,@Skills,@JoiningDate,@IsInternal)
 SET @ReturnMsg = 'Candidate Details Added Successfully'
 END TRY
 BEGIN CATCH
		SET @ReturnMsg = 'Something went wrong'
	END CATCH
END
Else
	Begin
		 SET @ReturnMsg = 'Duplicate Record Found'
	End
SELECT @ReturnMsg AS status 
end
GO
/****** Object:  StoredProcedure [dbo].[usp_candidateDataImport]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_candidateDataImport] (@Json NVARCHAR(MAX))
AS
BEGIN
	DECLARE @message NVARCHAR(200) = '';

	SET NOCOUNT ON;

	BEGIN TRY
		BEGIN
			WITH JsonToTable
			AS (
				SELECT *
				FROM OPENJSON(@Json) WITH (
						CandidateName NVARCHAR(100)
						,CandidateUid NVARCHAR(100)
						,MobileNo NVARCHAR(20)
						,Gender NVARCHAR(50)
						,DOB DATETIME
						,Email NVARCHAR(100)
						,[Location] NVARCHAR(100)
						,Skills NVARCHAR(MAX)
						,JoiningDate DATETIME
						,[Address] NVARCHAR(MAX)
						,[Status] NVARCHAR(MAX)
						,Pincode NVARCHAR(10)
						,isInternal BIT
						)
				)
			MERGE Candidate AS TARGET
			USING JsonToTable AS SOURCE
				ON (
						TARGET.CandidateName = SOURCE.candidateName
						AND TARGET.EmailId = SOURCE.email 
						)
			WHEN NOT MATCHED
				THEN
					INSERT (
						CandidateName
						,CandidateUid
						,Gender
						,MobileNo
						,DOB
						,EmailId
						,Location
						,Pincode
						,Address
						,STATUS
						,Skills
						,JoiningDate
						,IsInternal
						)
					VALUES (
						SOURCE.candidateName
						,SOURCE.candidateUid
						,SOURCE.gender
						,SOURCE.mobileNo
						,SOURCE.dob
						,SOURCE.email
						,SOURCE.location
						,SOURCE.pincode
						,SOURCE.address,
						(select Status.StatusId
                            from Status
                            where (Status.StatusType='Candidate' and LOWER(Status.StatusName) = LOWER(SOURCE.STATUS)  and Status.IsDeleted=0))
						
						,SOURCE.skills
						,SOURCE.joiningDate
						,SOURCE.isInternal
						);

			IF @@ROWCOUNT = 0
			BEGIN
				SET @message = 'Duplicate Records found ';
			END
			ELSE
			BEGIN
				SET @message = 'Data inserted successfully';
			END;
		END;
	END TRY

	BEGIN CATCH
					SET @message = 'Something Went Wrong';

	END CATCH;

	SELECT @message AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[usp_deleteCandidateData]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_deleteCandidateData]
@CandidateId int
as
DECLARE @STATUS NVARCHAR(200)=''
begin
IF EXISTS (SELECT * FROM Candidate WHERE CandidateId=@CandidateId AND IsDeleted = 0)
	BEGIN
	IF NOT EXISTS (
				SELECT *
				FROM SOWCandidate
				WHERE CandidateId = @CandidateId AND IsDeleted = 0
			)
			BEGIN
				UPDATE Candidate
				SET IsDeleted = 1
				WHERE CandidateId = @CandidateId 

				SET @STATUS = 'Candidate Deleted Successfully'
			END
	ELSE
		BEGIN
			SET @STATUS = 'Mapping Exists for this Candidate with SO Please unmap and then delete'
		END
	END

select @STATUS as status 
end
GO
/****** Object:  StoredProcedure [dbo].[usp_editCandidateData]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_editCandidateData] @CandidateId INT
	,@CandidateName NVARCHAR(100)
	,@CandidateUid NVARCHAR(100)
	,@MobileNo NVARCHAR(50)
	,@Gender NVARCHAR(20)
	,@DOB DATE
	,@EmailId NVARCHAR(50)
	,@Location NVARCHAR(50)
	,@Pincode NVARCHAR(10)
	,@Address NVARCHAR(max)
	,@Status NVARCHAR(50)
	,@Skills NVARCHAR(max)
	,@JoiningDate DATETIME
	,@IsInternal BIT
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';
DECLARE @statusId INT;

BEGIN
	SELECT @statusId = StatusId
	FROM STATUS
	WHERE StatusName = @Status;

	BEGIN TRY
		UPDATE Candidate
		SET CandidateName = @CandidateName
			,CandidateUid = @CandidateUid
			,MobileNo = @MobileNo
			,Gender = @Gender
			,DOB = @DOB
			,EmailId = @EmailId
			,Location = @Location
			,Pincode = @Pincode
			,Address = @Address
			,STATUS = @statusId
			,Skills = @Skills
			,JoiningDate = @JoiningDate
			,IsInternal = @IsInternal
		WHERE CandidateId = @CandidateId;

		SET @ReturnMsg = 'Candidate Details Updated Successfully'
	END TRY

	BEGIN CATCH
		SET @ReturnMsg = 'Something went wrong'
	END CATCH

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[usp_getAllCandidateData]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_getAllCandidateData]
as
begin
set nocount on
select CandidateId,CandidateUid,CandidateName,MobileNo,DOB,EmailId,Location,Skills,JoiningDate,IsInternal,Address,B.StatusName Status,Pincode,Gender
from Candidate A
Inner Join [dbo].[Status] B On A.Status = B.StatusId
where Isnull(A.IsDeleted, 0) = 0 order by CandidateId desc

end
GO
/****** Object:  StoredProcedure [dbo].[usp_showCandidateData]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[usp_showCandidateData]
@CandidateId int 
as
begin 
set nocount on
select CandidateId,CandidateUid,CandidateName,Gender,MobileNo,DOB,EmailId,Location,Pincode,Address,Status,Skills,JoiningDate,IsInternal
from Candidate where CandidateId=@CandidateId
end
GO
/****** Object:  StoredProcedure [dbo].[usp_sowDataImport]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[usp_sowDataImport] (@Json NVARCHAR(MAX))
AS
BEGIN
	DECLARE @message NVARCHAR(200) = '';

	SET NOCOUNT ON

	BEGIN TRY
		BEGIN
		
			WITH JsonToTable
			AS (
				SELECT *
				FROM OPENJSON(@Json) WITH (
						DomainName NVARCHAR(100)
						,JRCode NVARCHAR(10)
						,RequestCreationDate DATETIME
						
						,AccountName NVARCHAR(100)
						,TechnologyName NVARCHAR(100)
						,[Role] NVARCHAR(100)
						,Location NVARCHAR(100)
						,Region NVARCHAR(100)
						,TargetOpenPositions INT
						,PositionsTobeClosed INT
						,USTPOCName NVARCHAR(100)
						,RecruiterName NVARCHAR(100)
						,USTTPMName NVARCHAR(100)
						,DellManagerName NVARCHAR(100)
						,StatusName NVARCHAR(100)
						,Band NVARCHAR(100)
						,ProjectId NVARCHAR(100)
						,AccountManager NVARCHAR(200)
						,ExternalResource NVARCHAR(100)
						,InternalResource NVARCHAR(100)
						,Onboardingdate DATETIME
						)
				)
			MERGE SOW AS TARGET
			USING JsonToTable AS SOURCE
				ON (
						TARGET.SoName = SOURCE.DomainName
						AND target.JRCode = source.JRCode
						)
			WHEN NOT MATCHED
				THEN
					INSERT (
						SoName
						,JRCode
						,RequestCreationDate
						
						,AccountId
						,TechnologyId
						,[Role]
						,LocationId
						,RegionId
						,TargetOpenPositions
						,PositionsTobeClosed
						,USTPOCId
						,RecruiterId
						,USTTPMId
						,DellManagerId
						,StatusId
						,Band
						,ProjectId
						,AccountManager
						,ExternalResource
						,InternalResource
						,Onboardingdate
						)
					VALUES (
						SOURCE.domainName
						,SOURCE.jrCode
						,SOURCE.requestCreationDate
						
						,(
							SELECT TOP 1 Account.AccountId
							FROM Account
							WHERE (
									Account.isDeleted = 0
									AND LOWER(Account.AccountName) = LOWER(SOURCE.accountName)
									)
							)
						,(
							SELECT TOP 1 Technology.TechnologyId
							FROM Technology
							WHERE (
									Technology.isDeleted = 0
									AND LOWER(Technology.TechnologyName) = LOWER(SOURCE.technologyName)
									)
							)
						,SOURCE.ROLE
						,(
							SELECT TOP 1 Location.LocationId
							FROM Location
							WHERE (
									Location.isDeleted = 0
									AND LOWER(Location.Location) = LOWER(SOURCE.location)
									)
							)
						,(
							SELECT TOP 1 Region.RegionId
							FROM Region
							WHERE (
									Region.isDeleted = 0
									AND LOWER(Region.Region) = LOWER(SOURCE.region)
									)
							)
						,SOURCE.targetOpenPositions
						,SOURCE.positionsTobeClosed
						,(
							SELECT TOP 1 USTPOC.USTPOCId
							FROM USTPOC
							WHERE (
									USTPOC.isDeleted = 0
									AND LOWER(USTPOC.USTPOCName) = LOWER(SOURCE.ustpocName)
									)
							)
						,(
							SELECT TOP 1 Recruiter.RecruiterId
							FROM Recruiter
							WHERE (
									Recruiter.isDeleted = 0
									AND LOWER(Recruiter.RecruiterName) = LOWER(SOURCE.recruiterName)
									)
							)
						,(
							SELECT TOP 1 USTTPM.USTTPMId
							FROM USTTPM
							WHERE (
									USTTPM.isDeleted = 0
									AND LOWER(USTTPM.USTTPMName) = LOWER(SOURCE.usttpmName)
									)
							)
						,(
							SELECT TOP 1 DellManager.DellManagerId
							FROM DellManager
							WHERE (
									DellManager.isDeleted = 0
									AND LOWER(DellManager.DellManagerName) = LOWER(SOURCE.dellManagerName)
									)
							)
						,(
							SELECT TOP 1 STATUS.StatusId
							FROM STATUS
							WHERE (
									STATUS.isDeleted = 0
									AND STATUS.StatusType = 'SO'
									AND LOWER(STATUS.StatusName) = LOWER(SOURCE.StatusName)
									)
							)
						,SOURCE.band
						,SOURCE.projectId
						,SOURCE.accountManager
						,SOURCE.externalResource
						,SOURCE.internalResource
						,SOURCE.onboardingdate
						);

			IF @@ROWCOUNT = 0
			BEGIN
				SET @message = 'Duplicate Records found ';
			END
			ELSE
			BEGIN
				SET @message = 'Data inserted successfully';
			END;
		END
	END TRY

	BEGIN CATCH
		SET @message='An error occurred: ' + ERROR_MESSAGE();
	END CATCH

	SELECT @message AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[USTPOC_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USTPOC_proc] (
	@USTPOCId INT
	,@USTPOCName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM USTPOC
				WHERE USTPOCName = @USTPOCName
				)
		BEGIN
			INSERT INTO USTPOC (USTPOCName)
			VALUES (@USTPOCName)

			SET @ReturnMsg = 'USTPOC Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM USTPOC
		WHERE isDeleted = 0
		ORDER BY USTPOCId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM USTPOC
		WHERE USTPOCId = @USTPOCId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE USTPOC
		SET USTPOCName = @USTPOCName
		WHERE USTPOCId = @USTPOCId

		SET @ReturnMsg = 'USTPOC Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM USTPOC WHERE USTPOCId= @USTPOCId   
		UPDATE USTPOC
		SET isDeleted = 1
		WHERE USTPOCId = @USTPOCId

		SET @ReturnMsg = 'USTPOC Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[USTTPM_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[USTTPM_proc] (
	@USTTPMId INT
	,@USTTPMName NVARCHAR(100)
	,@Type NVARCHAR(100)
	)
AS
DECLARE @ReturnMsg NVARCHAR(200) = '';

BEGIN
	IF (@Type = 'post')
	BEGIN
		IF NOT EXISTS (
				SELECT *
				FROM USTTPM
				WHERE Lower(USTTPMName) = Lower(@USTTPMName)
				)
		BEGIN
			INSERT INTO USTTPM (USTTPMName)
			VALUES (@USTTPMName)

			SET @ReturnMsg = 'USTTPM Added Successfully'
		END
		ELSE
		BEGIN
			SET @ReturnMsg = 'Duplicate Record Found'
		END
	END
	ELSE IF (@Type = 'get')
	BEGIN
		SELECT *
		FROM USTTPM
		WHERE isDeleted = 0
		ORDER BY USTTPMId DESC
	END
	ELSE IF (@Type = 'getid')
	BEGIN
		SELECT *
		FROM USTTPM
		WHERE USTTPMId = @USTTPMId
	END
	ELSE IF (@Type = 'update')
	BEGIN
		UPDATE USTTPM
		SET USTTPMName = @USTTPMName
		WHERE USTTPMId = @USTTPMId

		SET @ReturnMsg = 'USTPOC Updated Successfully'
	END
	ELSE IF (@Type = 'Delete')
	BEGIN
		--DELETE FROM USTTPM where USTTPMId= @USTTPMId    
		UPDATE USTTPM
		SET isDeleted = 1
		WHERE USTTPMId = @USTTPMId

		SET @ReturnMsg = 'USTPOC Deleted Successfully'
	END

	SELECT @ReturnMsg AS STATUS
END
GO
/****** Object:  StoredProcedure [dbo].[ValidateSecuityQnA_proc]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[ValidateSecuityQnA_proc]    
(  
    @EmailId varchar(100),
    @QuestionId1 int,
    @Answer1 varchar(100),
    @QuestionId2 int,
    @Answer2 varchar(100),
    @QuestionId3 int,
    @Answer3 varchar(100)
    
)  
AS 
BEGIN
    DECLARE @LoginId int,@msg varchar(100);

    -- Get the LoginId based on EmailId
    

    -- Check if the SecurityAnswer exists for the LoginId
    IF EXISTS (SELECT * FROM SecurityAnswer WHERE SecurityAnswer.LoginId = (SELECT dbo.Login.LoginId FROM dbo.Login WHERE EmailId = @EmailId))
    BEGIN
        -- Check if the provided answers match the stored answers
        IF EXISTS (
            SELECT *
            FROM SecurityAnswer
            WHERE LoginId = (SELECT dbo.Login.LoginId FROM dbo.Login WHERE EmailId = @EmailId)
            AND 
                      (
                             (QuestionId1 = @QuestionId1 AND LOWER(Answer1) = LOWER(@Answer1))AND
                             (QuestionId2 = @QuestionId2 AND LOWER(Answer2) = LOWER(@Answer2)) AND
                (QuestionId3 = @QuestionId3 AND LOWER(Answer3) = LOWER(@Answer3))
            )
        )
        BEGIN
            SET @msg = 'Email Verified Successfully';
        END
        ELSE
        BEGIN
            SET @msg = 'Please contact Admin. Details provided are incorrect';
        END
    END
    ELSE
    BEGIN
        SET @msg = 'No security answers found for the user';
    END;
       SELECT @msg AS STATUS
END;

GO
/****** Object:  StoredProcedure [dbo].[ValidateSecurityAnswers]    Script Date: 04-09-2023 10:56:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

 

--ALTER PROCEDURE [dbo].[ValidateSecuityQnA_proc]    
--(  
--    @EmailId varchar(100),
--    @QuestionId1 int,
--    @Answer1 varchar(100),
--    @QuestionId2 int,
--    @Answer2 varchar(100),
--    @QuestionId3 int,
--    @Answer3 varchar(100),
--    @msg varchar(100) OUT
--)  
--AS 
--BEGIN
--    DECLARE @LoginId int;

 

--    -- Get the LoginId based on EmailId
--    SELECT @LoginId = LoginId FROM dbo.Login WHERE EmailId = @EmailId;

 

--    -- Check if the SecurityAnswer exists for the LoginId
--    IF EXISTS (SELECT * FROM SecurityAnswer WHERE LoginId = @LoginId)
--    BEGIN
--        -- Check if the provided answers match the stored answers
--        IF EXISTS (
--            SELECT *
--            FROM SecurityAnswer
--            WHERE LoginId = @LoginId
--            AND (
--                (QuestionId1 = @QuestionId1 AND Answer1 = @Answer1)
--                OR (QuestionId2 = @QuestionId2 AND Answer2 = @Answer2)
--                OR (QuestionId3 = @QuestionId3 AND Answer3 = @Answer3)
--            )
--        )
--        BEGIN
--            SET @msg = 'Details are correct';
--        END
--        ELSE
--        BEGIN
--            SET @msg = 'Please contact Admin. Details provided are incorrect';
--        END
--    END
--    ELSE
--    BEGIN
--        SET @msg = 'No security answers found for the user';
--    END;
--END;

 


Create PROCEDURE [dbo].[ValidateSecurityAnswers]
      @EmailId varchar(100),
  @QuestionId1 int,
  @Answer1 varchar(100),
  @QuestionId2 int,
  @Answer2 varchar(100),
  @QuestionId3 int,
  @Answer3 varchar(100),
@IsValid BIT OUTPUT
AS
BEGIN
    SET NOCOUNT ON;

 

    DECLARE @CorrectAnswers INT = 0;
     DECLARE @LoginId int;

 


  SELECT @LoginId = LoginId FROM dbo.Login WHERE EmailId = @EmailId;

 

    -- Check if the provided answers match the stored answers
    IF EXISTS (
        SELECT *
        FROM SecurityAnswer
        WHERE LoginId = @LoginId
          AND (QuestionId1 = @QuestionId1 AND Answer1 = @Answer1)
    )
    BEGIN
        SET @CorrectAnswers += 1;
    END

 

    IF EXISTS (
        SELECT *
        FROM SecurityAnswer
        WHERE LoginId = @LoginId
          AND (QuestionId2 = @QuestionId2 AND Answer2 = @Answer2)
    )
    BEGIN
        SET @CorrectAnswers += 1;
    END

 

    IF EXISTS (
        SELECT *
        FROM SecurityAnswer
        WHERE LoginId = @LoginId
          AND (QuestionId3 = @QuestionId3 AND Answer3 = @Answer3)
    )
    BEGIN
        SET @CorrectAnswers += 1;
    END

 

    -- Set the output parameter to indicate whether all answers are correct or not
    IF @CorrectAnswers = 3
    BEGIN
        SET @IsValid = 1;
    END
    ELSE
    BEGIN
        SET @IsValid = 0;
    END
END
GO
USE [master]
GO
ALTER DATABASE [SOW_Db] SET  READ_WRITE 
GO
