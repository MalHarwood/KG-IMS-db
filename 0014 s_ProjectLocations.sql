USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_Projects]    Script Date: 30/03/2014 11:59:05 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_ProjectLocations](
	[ProjLocGUID] [uniqueidentifier] NOT NULL,
	[ProjGUID] [uniqueidentifier] NOT NULL,
	LocationGUID [uniqueidentifier] NOT NULL,
	[Active] [bit] NOT NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaas_ProjectLocations_PK] PRIMARY KEY NONCLUSTERED 
(
	[ProjLocGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_ProjectLocations]  WITH CHECK ADD  CONSTRAINT [s_ProjectLocations_Loc_FK00] FOREIGN KEY([LocationGUID])
REFERENCES [dbo].[s_Locations] ([LocationGUID])
GO

ALTER TABLE [dbo].[s_ProjectLocations] CHECK CONSTRAINT [s_ProjectLocations_Loc_FK00]
GO

ALTER TABLE [dbo].[s_ProjectLocations]  WITH CHECK ADD  CONSTRAINT [s_ProjectLocations_Proj_FK00] FOREIGN KEY([ProjGUID])
REFERENCES [dbo].[s_Projects] ([ProjGUID])
GO

ALTER TABLE [dbo].[s_ProjectLocations] CHECK CONSTRAINT [s_ProjectLocations_Proj_FK00]
GO

ALTER TABLE [dbo].[s_ProjectLocations] ADD  DEFAULT (newid()) FOR [ProjLocGUID]
GO

ALTER TABLE [dbo].[s_ProjectLocations] ADD  DEFAULT (1) FOR [Active]
GO

ALTER TABLE [dbo].[s_ProjectLocations] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

ALTER TABLE [dbo].[s_Projects] DROP CONSTRAINT [s_Projects_FK00]
GO
