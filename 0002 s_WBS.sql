USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_WBS]    Script Date: 30/03/2014 12:09:03 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_WBS](
	[WBSGUID] [uniqueidentifier] NOT NULL,
	[ProjGUID] [uniqueidentifier] NOT NULL,
	[Level] [int] NOT NULL,
	[SortOrder] [int] NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[DueDate] [datetime] NULL,
	[CompletedDate] [datetime] NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaas_WBS1_PK] PRIMARY KEY NONCLUSTERED 
(
	[WBSGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_WBS]  WITH CHECK ADD  CONSTRAINT [s_WBS_FK00] FOREIGN KEY([ProjGUID])
REFERENCES [dbo].[s_Projects] ([ProjGUID])
GO

ALTER TABLE [dbo].[s_WBS] CHECK CONSTRAINT [s_WBS_FK00]
GO

ALTER TABLE [dbo].[s_WBS] ADD  DEFAULT (newid()) FOR [ProjGUID]
GO

ALTER TABLE [dbo].[s_WBS] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO
