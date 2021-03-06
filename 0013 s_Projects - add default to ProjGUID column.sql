/*
   Sunday, 30 March 201411:03:17 PM
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
ALTER TABLE dbo.s_Projects ADD CONSTRAINT
	DF_s_Projects_ProjGUID DEFAULT (newid()) FOR ProjGUID
GO
ALTER TABLE dbo.s_Projects SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
