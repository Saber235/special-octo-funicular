show databases;

create schema Recuperación_MuchosAMuchos_2699192;
drop schema Recuperación_MuchosAMuchos_2699192;
use  Recuperación_MuchosAMuchos_2699192;
show tables ;
CREATE TABLE tb_posibles_Cursos(	
	Id_Curso	varchar(15) 	not null,
    Sigla	varchar(50)		not null,
    Rut	varchar(15) 	not null,
    
    primary key(Id_Curso)
);
drop table tb_posibles_Cursos;
 describe  tb_posibles_Cursos;
 select * from  tb_posibles_Cursos;
 select * from tb_posibles_Profeciones,tb_posibles_hijos where tb_posibles_Profeciones.dni_Pr = tb_posibles_hijos.dni_Pr;
 
 
 CREATE TABLE tb_posibles_Profesor(	
	Rut	varchar(15) 	not null,
    Id_Curso	varchar(15) 	not null,
    Nombre	varchar(50)		not null,
    Telefono  int              null,
    Direción varchar(50)		 null,
    primary key(Rut)
);
drop table  tb_posibles_Profesor;
 describe   tb_posibles_Profesor;
 select * from   tb_posibles_Profesor;
 select * from tb_posibles_Profeciones,tb_posibles_hijos where tb_posibles_Profeciones.dni_Pr = tb_posibles_hijos.dni_Pr;
 
 SHOW DATABASES;
 CREATE DATABASE tb_prof_curso;
 GRANT ALL ON tb_prof_curso.* TO CURRENT_USER;
 CREATE TABLE tb_Prof_Curso(	
	Id_Prof_Curso	varchar(15) 	not null,
    Id_Curso	varchar(15) 	not null,
	Rut varchar(15) 	not null,
    primary key(Id_Prof_Curso)
);
drop table  tb_Prof_Curso;
 describe   tb_Prof_Curso;
 
 select * from   tb_Prof_Curso.Id_Prof_Curso, tb_posibles_Profesor.Rut, tb_posibles_Cursos.Rut
 where tb_Prof_Curso.Id_Prof_Curso = tb_posibles_Profesor.Id_Prof_Curso AND tb_posibles_Profesor.Rut = tb_posibles_Cursos.Rut;
 