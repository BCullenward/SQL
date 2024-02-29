USE [Movies]
GO

/****** Object:  Table [dbo].[MovieList_Removed]    Script Date: 2/28/2024 6:26:29 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieList_Removed]') AND type in (N'U'))
DROP TABLE [dbo].[MovieList_Removed]
GO

/****** Object:  Table [dbo].[MovieList_Removed]    Script Date: 2/28/2024 6:26:29 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovieList_Removed](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RootDirectory] [varchar](500) NULL,
	[ParentDirectory] [varchar](500) NULL,
	[Directory] [varchar](500) NULL,
	[FileName] [varchar](500) NULL,
	[Extension] [varchar](500) NULL,
	[FileSize] [bigint] NULL,
 CONSTRAINT [PK_MovieList_Removed] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


