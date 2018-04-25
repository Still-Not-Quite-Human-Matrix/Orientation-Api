USE [SNQHM_bangazoncli_db]
GO
/****** Object:  Table [dbo].[TrainingProgram]    Script Date: 4/24/2018 9:11:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrainingProgram](
	[TrainingProgramID] [int] NOT NULL,
	[MaxAttendees] [int] NULL,
	[TrainingTitle] [varchar](50) NULL,
	[Description] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_TrainingProgram] PRIMARY KEY CLUSTERED 
(
	[TrainingProgramID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
