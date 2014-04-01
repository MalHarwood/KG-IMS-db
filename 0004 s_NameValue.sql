USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_NameValue]    Script Date: 30/03/2014 7:50:18 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_NameValue](
	[Name] [nvarchar](100) NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [datetime] NOT NULL,
 CONSTRAINT [PK_s_NameValue] PRIMARY KEY CLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_NameValue] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO
