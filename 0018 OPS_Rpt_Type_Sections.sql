/*
   Tuesday, 1 April 20147:47:34 PM
   User: 
   Server: MALH-PC\MSSQLSERVER2012
   Database: KG-IMS
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.OPS_Rpt_Type_Sections
	(
	RPT_Type_SectionGUID uniqueidentifier NOT NULL,
	ParetnGUID uniqueidentifier NOT NULL,
	SectionNumber int NULL,
	Title nvarchar(MAX) NOT NULL,
	EntryTypeGUID uniqueidentifier NOT NULL,
	Active bit NOT NULL,
	ChangedBy nvarchar(50) NOT NULL,
	ChangedOn datetime NOT NULL
	)  ON [PRIMARY]
	 TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	DF_Table_2_ProjGUID DEFAULT (newid()) FOR RPT_Type_SectionGUID
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	DF_OPS_Rpt_Type_Sections_Active DEFAULT ((1)) FOR Active
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	DF_OPS_Rpt_Type_Sections_ChangedOn DEFAULT (getdate()) FOR ChangedOn
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	PK_OPS_Rpt_Type_Sections PRIMARY KEY CLUSTERED 
	(
	RPT_Type_SectionGUID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'CONTROL') as Contr_Per 