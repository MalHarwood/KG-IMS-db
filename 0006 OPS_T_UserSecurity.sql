USE [KG-IMS]
GO


/****** Object:  Table [dbo].[OPS_T_UserSecurity]    Script Date: 30/03/2014 8:01:57 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[OPS_T_UserSecurity](
	[GUID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[SecurityLevelID] [int] NULL,
	[ChangedBy] [nvarchar](50) NOT NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaaOPS_T_UserSecurity_PK] PRIMARY KEY NONCLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[OPS_T_UserSecurity] ADD  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[OPS_T_UserSecurity] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO
