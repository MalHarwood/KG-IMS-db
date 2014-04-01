USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_Locations]    Script Date: 30/03/2014 12:05:26 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_Locations](
	[LocationGUID] [uniqueidentifier] NOT NULL,
	[Location] [nvarchar](255) NOT NULL,
	[Description] [nvarchar](255) NOT NULL,
	[Active] [bit] NOT NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaas_Locations1_PK] PRIMARY KEY NONCLUSTERED 
(
	[LocationGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_Locations] ADD  DEFAULT (newid()) FOR [LocationGUID]
GO

ALTER TABLE [dbo].[s_Locations] ADD  DEFAULT (1) FOR [Active]
GO

ALTER TABLE [dbo].[s_Locations] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

