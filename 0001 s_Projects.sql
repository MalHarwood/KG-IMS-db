USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_Projects]    Script Date: 30/03/2014 11:59:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_Projects](
	[ProjGUID] [uniqueidentifier] NOT NULL,
	[ProjectName] [nvarchar](255) NOT NULL,
	[ProjectNumber] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Client] [nvarchar](255) NOT NULL,
	[ClientProject] [nvarchar](255) NULL,
	[LocationGUID] [uniqueidentifier] NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDatePlanned] [datetime] NULL,
	[EndDateActual] [datetime] NULL,
	[Active] [bit] NOT NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaas_Projects1_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProjGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_Projects]  WITH CHECK ADD  CONSTRAINT [s_Projects_FK00] FOREIGN KEY([LocationGUID])
REFERENCES [dbo].[s_Locations] ([LocationGUID])
GO

ALTER TABLE [dbo].[s_Projects] CHECK CONSTRAINT [s_Projects_FK00]
GO

ALTER TABLE [dbo].[s_Projects] ADD  DEFAULT (newid()) FOR [LocationGUID]
GO

ALTER TABLE [dbo].[s_Projects] ADD  DEFAULT (1) FOR [Active]
GO

ALTER TABLE [dbo].[s_Projects] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

