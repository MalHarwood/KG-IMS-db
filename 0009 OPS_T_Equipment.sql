USE [KG-IMS]
GO

/****** Object:  Table [dbo].[OPS_T_Equipment]    Script Date: 30/03/2014 12:13:42 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OPS_T_Equipment](
	[EquipGUID] [uniqueidentifier] NOT NULL,
	[KGID] [nvarchar](255) NULL,
	[Description] [nvarchar](255) NULL,
	[CategoryGUID] [uniqueidentifier] NOT NULL,
	[LocationGUID] [uniqueidentifier] NOT NULL,
	[SerialNumber] [nvarchar](255) NULL,
	[Supplier] [nvarchar](255) NULL,
	[PurchasePrice] [float] NULL,
	[Certificate] [nvarchar](255) NULL,
	[InService] [bit] NULL,
	[PurchaseDate] [datetime] NULL,
	[EquipTypeGUID] [uniqueidentifier] NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaaOPS_T_Equipment_PK] PRIMARY KEY NONCLUSTERED 
(
	[EquipGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OPS_T_Equipment] ADD  DEFAULT ((0)) FOR [InService]
GO

ALTER TABLE [dbo].[OPS_T_Equipment] ADD  DEFAULT (newid()) FOR [EquipGUID]
GO

ALTER TABLE [dbo].[OPS_T_Equipment] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

ALTER TABLE [dbo].[OPS_T_Equipment]  WITH CHECK ADD  CONSTRAINT [OPS_T_Equipment_FK00] FOREIGN KEY([CategoryGUID])
REFERENCES [dbo].[OPS_T_Category] ([CategoryGUID])
GO

ALTER TABLE [dbo].[OPS_T_Equipment] CHECK CONSTRAINT [OPS_T_Equipment_FK00]
GO

ALTER TABLE [dbo].[OPS_T_Equipment]  WITH CHECK ADD  CONSTRAINT [OPS_T_Equipment_FK01] FOREIGN KEY([EquipTypeGUID])
REFERENCES [dbo].[OPS_T_EquipTypes] ([EquipTypeGUID])
GO

ALTER TABLE [dbo].[OPS_T_Equipment] CHECK CONSTRAINT [OPS_T_Equipment_FK01]
GO

ALTER TABLE [dbo].[OPS_T_Equipment]  WITH CHECK ADD  CONSTRAINT [OPS_T_Equipment_FK02] FOREIGN KEY([LocationGUID])
REFERENCES [dbo].[s_Locations] ([LocationGUID])
GO

ALTER TABLE [dbo].[OPS_T_Equipment] CHECK CONSTRAINT [OPS_T_Equipment_FK02]
GO
