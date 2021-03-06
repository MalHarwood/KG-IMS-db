/*
   Tuesday, 1 April 20147:48:09 PM
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
CREATE TABLE dbo.OPS_Rpt_Type_Section_Contents
	(
	RptSectionTypeGUID uniqueidentifier NOT NULL,
	Type nvarchar(50) NOT NULL,
	ChangedBy nvarchar(50) NOT NULL,
	ChangedOn datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.OPS_Rpt_Type_Section_Contents ADD CONSTRAINT
	DF_Table_3_ProjGUID DEFAULT (newid()) FOR RptSectionTypeGUID
GO
ALTER TABLE dbo.OPS_Rpt_Type_Section_Contents ADD CONSTRAINT
	DF_OPS_Rpt_Type_Section_Contents_ChangedOn DEFAULT (getdate()) FOR ChangedOn
GO
ALTER TABLE dbo.OPS_Rpt_Type_Section_Contents SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Type_Section_Contents', 'Object', 'CONTROL') as Contr_Per 