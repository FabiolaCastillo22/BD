/*
   martes, 14 de noviembre de 202311:32:20 a. m.
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
CREATE TABLE dbo.Materia
	(
	NRC bigint NULL,
	Nom_Materia varchar(50) NULL,
	Num_Horario_Sec int NULL,
	dia char(5) NULL,
	Num_Salon_Sec int NULL,
	Num_Periodo_Sec int NULL,
	Num_Trabajador bigint NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Materia SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Materia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Materia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Materia', 'Object', 'CONTROL') as Contr_Per 