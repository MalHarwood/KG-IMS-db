/*
   Tuesday, 1 April 20147:46:50 PM
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
CREATE TABLE dbo.OPS_Rpt_Types
	(
	RptTypeGUID uniqueidentifier NOT NULL,
	Name nvarchar(50) NOT NULL,
	SeedDate date NOT NULL,
	Frequency nvarchar(50) NOT NULL,
	Active bit NOT NULL,
	ChangedBy nvarchar(50) NOT NULL,
	ChangedOn datetime NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.OPS_Rpt_Types ADD CONSTRAINT
	DF_OPS_Rpt_Types_RptTypeGUID DEFAULT (newid()) FOR RptTypeGUID
GO
ALTER TABLE dbo.OPS_Rpt_Types ADD CONSTRAINT
	DF_OPS_Rpt_Types_Active DEFAULT ((1)) FOR Active
GO
ALTER TABLE dbo.OPS_Rpt_Types ADD CONSTRAINT
	DF_OPS_Rpt_Types_ChangedOn DEFAULT (getdate()) FOR ChangedOn
GO
ALTER TABLE dbo.OPS_Rpt_Types ADD CONSTRAINT
	PK_OPS_Rpt_Types PRIMARY KEY CLUSTERED 
	(
	RptTypeGUID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.OPS_Rpt_Types SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.OPS_Rpt_Types', 'Object', 'CONTROL') as Contr_Per 