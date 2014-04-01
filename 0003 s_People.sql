USE [KG-IMS]
GO

/****** Object:  Table [dbo].[s_People]    Script Date: 30/03/2014 11:59:44 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[s_People](
	[GUID] [uniqueidentifier] NOT NULL,
	[Username] [nvarchar](50) NULL,
	[Title] [nvarchar](20) NULL,
	[GivenName] [nvarchar](50) NULL,
	[Surname] [nvarchar](100) NULL,
	[Workphone] [nvarchar](20) NULL,
	[Homephone] [nvarchar](20) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Email] [nvarchar](150) NULL,
	[BirthDate] [datetime] NULL,
	[GenderClassGUID] [uniqueidentifier] NULL,
	[EmploymentClassID] [int] NULL,
	[Comments] [ntext] NULL,
	[OrganisationGUID] [uniqueidentifier] NULL,
	[EmployeeID] [nvarchar](20) NULL,
	[OnsiteContact] [nvarchar](50) NULL,
	[OffsiteContact] [nvarchar](50) NULL,
	[CommencedOn] [datetime] NULL,
	[CeasedOn] [datetime] NULL,
	[SupervisorGUID] [uniqueidentifier] NULL,
	[NextofKin] [nvarchar](50) NULL,
	[NextofKinPhone] [nvarchar](50) NULL,
	[StaffContractor] [nvarchar](1) NULL,
	[Active] [bit] NOT NULL,
	[ChangedBy] [nvarchar](50) NULL,
	[ChangedOn] [datetime] NOT NULL,
	[PhotoID] [int] NULL,
	[MineHealthNumber] [nvarchar](20) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

ALTER TABLE [dbo].[s_People] ADD  DEFAULT (newid()) FOR [GUID]
GO

ALTER TABLE [dbo].[s_People] ADD  DEFAULT ((1)) FOR [Active]
GO

ALTER TABLE [dbo].[s_People] ADD  DEFAULT (GETDATE()) FOR [ChangedOn]
GO
