USE [KG-IMS]
GO

/****** Object:  Table [dbo].[OPS_T_EquipTypes]    Script Date: 30/03/2014 8:01:51 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OPS_T_EquipTypes](
	[EquipTypeGUID] [uniqueidentifier] NOT NULL,
	[Type] [nvarchar](50) NULL,
	[Description] [ntext] NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaaOPS_T_EquipTypes_PK] PRIMARY KEY NONCLUSTERED 
(
	[EquipTypeGUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[OPS_T_EquipTypes] ADD  DEFAULT (newid()) FOR [EquipTypeGUID]
GO

ALTER TABLE [dbo].[OPS_T_EquipTypes] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO
