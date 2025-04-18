/*
   martes, 14 de noviembre de 202311:38:28 a. m.
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
CREATE TABLE dbo.Tmp_Salon
	(
	Num_Salon int NOT NULL,
	Salon varchar(12) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Salon SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Salon)
	 EXEC('INSERT INTO dbo.Tmp_Salon (Num_Salon, Salon)
		SELECT Num_Salon, Salon FROM dbo.Salon WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Salon
GO
EXECUTE sp_rename N'dbo.Tmp_Salon', N'Salon', 'OBJECT' 
GO
ALTER TABLE dbo.Salon ADD CONSTRAINT
	PK_Salon PRIMARY KEY CLUSTERED 
	(
	Num_Salon
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
select Has_Perms_By_Name(N'dbo.Salon', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Salon', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Salon', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Periodo
	(
	Num_Periodo int NOT NULL,
	Periodo varchar(10) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Periodo SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Periodo)
	 EXEC('INSERT INTO dbo.Tmp_Periodo (Num_Periodo, Periodo)
		SELECT Num_Periodo, Periodo FROM dbo.Periodo WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Periodo
GO
EXECUTE sp_rename N'dbo.Tmp_Periodo', N'Periodo', 'OBJECT' 
GO
ALTER TABLE dbo.Periodo ADD CONSTRAINT
	PK_Periodo PRIMARY KEY CLUSTERED 
	(
	Num_Periodo
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
select Has_Perms_By_Name(N'dbo.Periodo', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Periodo', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Periodo', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Horario
	(
	Num_Horario int NOT NULL,
	Horario varchar(15) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Horario SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Horario)
	 EXEC('INSERT INTO dbo.Tmp_Horario (Num_Horario, Horario)
		SELECT Num_Horario, Horario FROM dbo.Horario WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Horario
GO
EXECUTE sp_rename N'dbo.Tmp_Horario', N'Horario', 'OBJECT' 
GO
ALTER TABLE dbo.Horario ADD CONSTRAINT
	PK_Horario PRIMARY KEY CLUSTERED 
	(
	Num_Horario
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
select Has_Perms_By_Name(N'dbo.Horario', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Horario', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Horario', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Docente
	(
	Num_Trabajador bigint NOT NULL,
	Nom_Docente varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Docente SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Docente)
	 EXEC('INSERT INTO dbo.Tmp_Docente (Num_Trabajador, Nom_Docente)
		SELECT Num_Trabajador, Nom_Docente FROM dbo.Docente WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Docente
GO
EXECUTE sp_rename N'dbo.Tmp_Docente', N'Docente', 'OBJECT' 
GO
ALTER TABLE dbo.Docente ADD CONSTRAINT
	PK_Docente PRIMARY KEY CLUSTERED 
	(
	Num_Trabajador
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
COMMIT
select Has_Perms_By_Name(N'dbo.Docente', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Docente', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Docente', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
CREATE TABLE dbo.Tmp_Materia
	(
	NRC bigint NOT NULL,
	Nom_Materia varchar(50) NULL,
	Num_Horario_Sec int NULL,
	dia char(5) NULL,
	Num_Salon_Sec int NULL,
	Num_Periodo_Sec int NULL,
	Num_Trabajador_Sec bigint NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.Tmp_Materia SET (LOCK_ESCALATION = TABLE)
GO
IF EXISTS(SELECT * FROM dbo.Materia)
	 EXEC('INSERT INTO dbo.Tmp_Materia (NRC, Nom_Materia, Num_Horario_Sec, dia, Num_Salon_Sec, Num_Periodo_Sec, Num_Trabajador_Sec)
		SELECT NRC, Nom_Materia, Num_Horario_Sec, dia, Num_Salon_Sec, Num_Periodo_Sec, Num_Trabajador FROM dbo.Materia WITH (HOLDLOCK TABLOCKX)')
GO
DROP TABLE dbo.Materia
GO
EXECUTE sp_rename N'dbo.Tmp_Materia', N'Materia', 'OBJECT' 
GO
ALTER TABLE dbo.Materia ADD CONSTRAINT
	PK_Materia PRIMARY KEY CLUSTERED 
	(
	NRC
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.Materia ADD CONSTRAINT
	FK_Materia_Docente FOREIGN KEY
	(
	Num_Trabajador_Sec
	) REFERENCES dbo.Docente
	(
	Num_Trabajador
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Materia ADD CONSTRAINT
	FK_Materia_Salon FOREIGN KEY
	(
	Num_Salon_Sec
	) REFERENCES dbo.Salon
	(
	Num_Salon
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Materia ADD CONSTRAINT
	FK_Materia_Horario FOREIGN KEY
	(
	Num_Horario_Sec
	) REFERENCES dbo.Horario
	(
	Num_Horario
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.Materia ADD CONSTRAINT
	FK_Materia_Periodo FOREIGN KEY
	(
	Num_Periodo_Sec
	) REFERENCES dbo.Periodo
	(
	Num_Periodo
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Materia', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Materia', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Materia', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.Alumno SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.Alumno', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.Alumno', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.Alumno', 'Object', 'CONTROL') as Contr_Per BEGIN TRANSACTION
GO
ALTER TABLE dbo.[Alum-Mat] ADD CONSTRAINT
	[FK_Alum-Mat_Alumno] FOREIGN KEY
	(
	Matricula_Sec
	) REFERENCES dbo.Alumno
	(
	Matricula
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[Alum-Mat] ADD CONSTRAINT
	[FK_Alum-Mat_Materia] FOREIGN KEY
	(
	NRC_Sec
	) REFERENCES dbo.Materia
	(
	NRC
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.[Alum-Mat] SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.[Alum-Mat]', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.[Alum-Mat]', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.[Alum-Mat]', 'Object', 'CONTROL') as Contr_Per 