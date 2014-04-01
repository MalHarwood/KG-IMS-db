USE [KG-IMS]
GO

/****** Object:  Table [dbo].[OPS_T_Equipment_Service]    Script Date: 30/03/2014 8:01:46 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OPS_T_Equipment_Service](
	[ServiceGUID] [uniqueidentifier] NOT NULL,
	[EquipGUID] [uniqueidentifier] NULL,
	[ServiceDate] [datetime] NULL,
	[SeviceName] [nvarchar](255) NULL,
	[Comment] [nvarchar](255) NULL,
	[Tagged] [bit] NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaaOPS_T_Equipment_Service_PK] PRIMARY KEY NONCLUSTERED 
(
	[ServiceGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OPS_T_Equipment_Service] ADD  DEFAULT ((0)) FOR [Tagged]
GO

ALTER TABLE [dbo].[OPS_T_Equipment_Service] ADD  DEFAULT (newid()) FOR [ServiceGUID]
GO

ALTER TABLE [dbo].[OPS_T_Equipment_Service] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

ALTER TABLE [dbo].[OPS_T_Equipment_Service]  WITH CHECK ADD  CONSTRAINT [OPS_T_Equipment_Service_FK00] FOREIGN KEY([EquipGUID])
REFERENCES [dbo].[OPS_T_Equipment] ([EquipGUID])
GO

ALTER TABLE [dbo].[OPS_T_Equipment_Service] CHECK CONSTRAINT [OPS_T_Equipment_Service_FK00]
GO
