/*
   martes, 14 de noviembre de 202311:24:53 a. m.
   User: 
   Server: DESKTOP-PVHAAKL\MSSQLSERVER01
   Database: FCC
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
CREATE TABLE dbo.Horario
	(
	Num_Horario int NULL,
	Horario varchar(15) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Horario SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Horario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Horario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Horario', 'Object', 'CONTROL') as Contr_Per 