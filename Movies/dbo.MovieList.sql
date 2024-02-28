USE [Movies]
GO

/****** Object:  Table [dbo].[MovieList]    Script Date: 2/28/2024 4:59:59 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MovieList]') AND type in (N'U'))
DROP TABLE [dbo].[MovieList]
GO

/****** Object:  Table [dbo].[MovieList]    Script Date: 2/28/2024 4:59:59 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[MovieList](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[RootDirectory] [varchar](500) NULL,
	[ParentDirectory] [varchar](500) NULL,
	[Directory] [varchar](500) NULL,
	[FileName] [varchar](500) NULL,
	[Extension] [varchar](500) NULL,
	[FileSize] [bigint] NULL,
 CONSTRAINT [PK_MovieList] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


