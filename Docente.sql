/*
   martes, 14 de noviembre de 202311:21:19 a. m.
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
CREATE TABLE dbo.Docente
	(
	Num_Trabajador bigint NULL,
	Nom_Docente varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Docente SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Docente', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Docente', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Docente', 'Object', 'CONTROL') as Contr_Per 