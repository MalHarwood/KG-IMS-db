USE [KG-IMS]
GO


/****** Object:  Table [dbo].[s_SecurityLevels]    Script Date: 30/03/2014 7:50:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_SecurityLevels](
	[GUID] [uniqueidentifier] NOT NULL,
	[SecurityLevel] [int] NULL,
	[Name] [nvarchar](50) NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [aaaaas_SecurityLevels1_PK] PRIMARY KEY NONCLUSTERED 
(
	[GUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_SecurityLevels] ADD  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[s_SecurityLevels] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO

INSERT INTO [dbo].[s_SecurityLevels] ([SecurityLevel], [Name], [ChangedBy]) VALUES (2, 'Editor', 'MalH')
GO
INSERT INTO [dbo].[s_SecurityLevels] ([SecurityLevel], [Name], [ChangedBy]) VALUES (9, 'Administrator', 'MalH')
GO
INSERT INTO [dbo].[s_SecurityLevels] ([SecurityLevel], [Name], [ChangedBy]) VALUES (1, 'Reader', 'MalH')
GO
INSERT INTO [dbo].[s_SecurityLevels] ([SecurityLevel], [Name], [ChangedBy]) VALUES (-1, 'ReadOnlyGuest', 'MalH')
GO

