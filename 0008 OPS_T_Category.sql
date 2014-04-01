USE [KG-IMS]
GO


/****** Object:  Table [dbo].[OPS_T_Category]    Script Date: 30/03/2014 8:01:41 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OPS_T_Category](
	[CategoryGUID] [uniqueidentifier] NOT NULL,
	[EquipTypeGUID] [uniqueidentifier] NULL,
	[Category] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaaOPS_T_Category_PK] PRIMARY KEY NONCLUSTERED 
(
	[CategoryGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[OPS_T_Category]  WITH CHECK ADD  CONSTRAINT [OPS_T_Category_FK00] FOREIGN KEY([EquipTypeGUID])
REFERENCES [dbo].[OPS_T_EquipTypes] ([EquipTypeGUID])
GO

ALTER TABLE [dbo].[OPS_T_Category] CHECK CONSTRAINT [OPS_T_Category_FK00]
GO

ALTER TABLE [dbo].[OPS_T_Category] ADD  DEFAULT (newid()) FOR [CategoryGUID]
GO

ALTER TABLE [dbo].[OPS_T_Category] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO