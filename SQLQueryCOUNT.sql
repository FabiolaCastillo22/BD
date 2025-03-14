use [FCC horarios]

/*SELECT Nombre, COUNT(NRC_Sec) NumeroMaterias FROM Alumno, AlumMat WHERE 
Matricula=Matricula_Sec and dia='L' GROUP BY Matricula_Sec, Nombre ORDER BY COUNT(NRC_Sec)DESC;*/

/*SELECT Nombre, COUNT(NRC_Sec) NumeroMaterias FROM Alumno, AlumMat WHERE 
Matricula=Matricula_Sec GROUP BY Matricula_Sec, Nombre ORDER BY COUNT(NRC_Sec)DESC;*/

/*SELECT Nom_Docente, COUNT(NRC_Sec) FROM Docente, AlumMat, Materia WHERE Num_Trabajador=Num_Trabajador_Sec AND
NRC=NRC_Sec and Materia.dia=AlumMat.dia  GROUP BY Docente.Nom_Docente ORDER BY COUNT(NRC_Sec)DESC;*/

/*SELECT *FROM Materia WHERE Nom_Materia='Sistemas Operativos II' ORDER BY NRC;*/

/*create index miindice on Materia(NRC, Nom_Materia);*/

/*CREATE VIEW MATERIA_VIEW AS SELECT NRC, Nom_Materia FROM Materia WHERE Nom_Materia='Sistemas Operativos I'*/

/*SELECT Docente.Nom_Docente, Materia.Nom_Materia FROM Docente, Materia WHERE Num_Trabajador=Num_Trabajador_Sec AND Nom_Materia='Sistemas Operativos II';*/

/*SELECT Nom_Materia, Nom_Docente, Horario.Horario FROM Alumno, [Alum-Mat], Docente, Materia, Horario WHERE Num_Trabajador=Num_Trabajador_Sec AND NRC=NRC_Sec AND Matricula=Matricula_Sec AND
Num_Horario=Num_Horario_Sec and  Nombre='Fabiola';*/

/*SELECT Nom_Docente, COUNT(Materia.Nom_Materia) NUMERO_DE_MATERIAS FROM Docente, Materia WHERE Num_Trabajador=Num_Trabajador_Sec GROUP BY Nom_Docente; */

select Nom_Materia,  count (Nom_Materia) from Materia group by Nom_Materia;

