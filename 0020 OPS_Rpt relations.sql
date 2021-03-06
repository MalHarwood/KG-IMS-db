/*
   Tuesday, 1 April 20147:52:48 PM
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
ALTER TABLE dbo.OPS_Rpt_Types SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.OPS_Rpt_Type_Section_Contents ADD CONSTRAINT
	PK_OPS_Rpt_Type_Section_Contents PRIMARY KEY CLUSTERED 
	(
	RptSectionTypeGUID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.OPS_Rpt_Type_Section_Contents SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
EXECUTE sp_rename N'dbo.OPS_Rpt_Type_Sections.ParetnGUID', N'Tmp_ParentGUID', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.OPS_Rpt_Type_Sections.EntryTypeGUID', N'Tmp_RptSectionTypeGUID_1', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.OPS_Rpt_Type_Sections.Tmp_ParentGUID', N'ParentGUID', 'COLUMN' 
GO
EXECUTE sp_rename N'dbo.OPS_Rpt_Type_Sections.Tmp_RptSectionTypeGUID_1', N'RptSectionTypeGUID', 'COLUMN' 
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	FK_OPS_Rpt_Type_Sections_OPS_Rpt_Type_Section_Contents FOREIGN KEY
	(
	RptSectionTypeGUID
	) REFERENCES dbo.OPS_Rpt_Type_Section_Contents
	(
	RptSectionTypeGUID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	FK_OPS_Rpt_Type_Sections_OPS_Rpt_Type_Sections FOREIGN KEY
	(
	ParentGUID
	) REFERENCES dbo.OPS_Rpt_Type_Sections
	(
	RPT_Type_SectionGUID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections ADD CONSTRAINT
	FK_OPS_Rpt_Type_Sections_OPS_Rpt_Types FOREIGN KEY
	(
	ParentGUID
	) REFERENCES dbo.OPS_Rpt_Types
	(
	RptTypeGUID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.OPS_Rpt_Type_Sections SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Sections', 'Object', 'CONTROL') as Contr_Per 