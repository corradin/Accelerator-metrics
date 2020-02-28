USE [master]
GO

/****** Object:  Database [metrics]    Script Date: 27/02/2020 13:16:10 ******/
CREATE DATABASE [metrics]
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [metrics].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

ALTER DATABASE [metrics] SET ANSI_NULL_DEFAULT OFF 
GO

ALTER DATABASE [metrics] SET ANSI_NULLS OFF 
GO

ALTER DATABASE [metrics] SET ANSI_PADDING OFF 
GO

ALTER DATABASE [metrics] SET ANSI_WARNINGS OFF 
GO

ALTER DATABASE [metrics] SET ARITHABORT OFF 
GO

ALTER DATABASE [metrics] SET AUTO_CLOSE OFF 
GO

ALTER DATABASE [metrics] SET AUTO_SHRINK OFF 
GO

ALTER DATABASE [metrics] SET AUTO_UPDATE_STATISTICS ON 
GO

ALTER DATABASE [metrics] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO

ALTER DATABASE [metrics] SET CURSOR_DEFAULT  GLOBAL 
GO

ALTER DATABASE [metrics] SET CONCAT_NULL_YIELDS_NULL OFF 
GO

ALTER DATABASE [metrics] SET NUMERIC_ROUNDABORT OFF 
GO

ALTER DATABASE [metrics] SET QUOTED_IDENTIFIER OFF 
GO

ALTER DATABASE [metrics] SET RECURSIVE_TRIGGERS OFF 
GO

ALTER DATABASE [metrics] SET  DISABLE_BROKER 
GO

ALTER DATABASE [metrics] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO

ALTER DATABASE [metrics] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO

ALTER DATABASE [metrics] SET TRUSTWORTHY OFF 
GO

ALTER DATABASE [metrics] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO

ALTER DATABASE [metrics] SET PARAMETERIZATION SIMPLE 
GO

ALTER DATABASE [metrics] SET READ_COMMITTED_SNAPSHOT OFF 
GO

ALTER DATABASE [metrics] SET HONOR_BROKER_PRIORITY OFF 
GO

ALTER DATABASE [metrics] SET RECOVERY SIMPLE 
GO

ALTER DATABASE [metrics] SET  MULTI_USER 
GO

ALTER DATABASE [metrics] SET PAGE_VERIFY CHECKSUM  
GO

ALTER DATABASE [metrics] SET DB_CHAINING OFF 
GO

ALTER DATABASE [metrics] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO

ALTER DATABASE [metrics] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO

ALTER DATABASE [metrics] SET DELAYED_DURABILITY = DISABLED 
GO

ALTER DATABASE [metrics] SET QUERY_STORE = OFF
GO

ALTER DATABASE [metrics] SET  READ_WRITE 
GO

USE [metrics]
GO

/****** Object:  Table [dbo].[Metrics]    Script Date: 27/02/2020 15:15:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Metrics](
	[ID] [int] NOT NULL,
	[CreateDate] [datetime] NOT NULL,
	[ProjectId] [varchar](255) NOT NULL,
	[MetricId] [varchar](255) NOT NULL,
	[ArtifactId] [varchar](255) NULL,
	[SourceApplication] [varchar](255) NOT NULL,
	[ArtifactName] [varchar](255) NULL,
	[Duration] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (1, CAST(N'2019-11-05T16:00:00.000' AS DateTime), N'Backend', N'Deployment', N'0.0.1', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (2, CAST(N'2019-11-05T16:01:00.000' AS DateTime), N'Frontend', N'Deployment', N'2.15.3', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (3, CAST(N'2019-11-05T16:08:00.000' AS DateTime), N'Backend', N'Deployment', N'0.0.2', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (4, CAST(N'2019-11-05T16:11:00.000' AS DateTime), N'Backend', N'Story Finished', N'TCK-001', N'Jira', N'Setting up API', 276480000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (5, CAST(N'2019-11-05T16:19:00.000' AS DateTime), N'Backend', N'Rollback', N'0.0.2', N'AzureDevOps', N'', 660000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (6, CAST(N'2019-11-05T16:28:00.000' AS DateTime), N'Backend', N'Deployment', N'1.0.0', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (7, CAST(N'2019-11-05T16:58:00.000' AS DateTime), N'Frontend', N'Story Finished', N'TCK-002', N'Jira', N'Creating input Boxes', 293700000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (8, CAST(N'2019-11-06T07:58:00.000' AS DateTime), N'Frontend', N'Deployment', N'1.0.1', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (9, CAST(N'2019-11-06T07:59:00.000' AS DateTime), N'Frontend', N'Rollback', N'1.0.1', N'AzureDevOps', N'', 60000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (10, CAST(N'2019-11-06T07:59:00.000' AS DateTime), N'Frontend', N'Deployment', N'1.0.2', N'AzureDevOps', N'', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (11, CAST(N'2019-11-02T08:23:00.000' AS DateTime), N'Backend', N'Story Started', N'TCK-001', N'Jira', N'Setting up API', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (12, CAST(N'2019-11-02T07:23:00.000' AS DateTime), N'Frontend', N'Story Started', N'TCK-002', N'Jira', N'Creating input Boxes', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (13, CAST(N'2019-11-10T08:40:00.000' AS DateTime), N'Backend', N'Story Started', N'TCK-003', N'Jira', N'Save Data', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (14, CAST(N'2019-11-10T13:22:00.000' AS DateTime), N'Frontend', N'Story Started', N'TCK-004', N'Jira', N'Save Data', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (15, CAST(N'2019-11-14T07:25:00.000' AS DateTime), N'Backend', N'Story Finished', N'TCK-003', N'Jira', N'Save Data', 341100000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (16, CAST(N'2019-11-14T08:59:00.000' AS DateTime), N'Frontend', N'Story Finished', N'TCK-004', N'Jira', N'Save Data', 75600000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (17, CAST(N'2019-11-15T11:40:00.000' AS DateTime), N'Backend', N'Story Started', N'TCK-005', N'Jira', N'Update Data', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (18, CAST(N'2019-11-15T11:53:00.000' AS DateTime), N'Frontend', N'Story Started', N'TCK-006', N'Jira', N'Update Data', 0)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (19, CAST(N'2019-11-17T08:30:00.000' AS DateTime), N'Backend', N'Story Finished', N'TCK-005', N'Jira', N'Update Data', 161400000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (20, CAST(N'2019-11-18T11:52:00.000' AS DateTime), N'Frontend', N'Story Finished', N'TCK-006', N'Jira', N'Update Data', 259140000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (21, CAST(N'2019-11-02T11:23:00.000' AS DateTime), N'Backend', N'Story In Progress', N'TCK-001', N'Jira', N'Setting up API', 10800000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (22, CAST(N'2019-11-11T08:59:00.000' AS DateTime), N'Frontend', N'Story In Progress', N'TCK-004', N'Jira', N'Save Data', 70620000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (23, CAST(N'2019-11-13T08:59:00.000' AS DateTime), N'Frontend', N'Story In Review', N'TCK-004', N'Jira', N'Save Data', 172800000)
GO
INSERT [dbo].[Metrics] ([ID], [CreateDate], [ProjectId], [MetricId], [ArtifactId], [SourceApplication], [ArtifactName], [Duration]) VALUES (24, CAST(N'2019-11-13T11:59:00.000' AS DateTime), N'Frontend', N'Story Under Test', N'TCK-004', N'Jira', N'Save Data', 10800000)
GO
