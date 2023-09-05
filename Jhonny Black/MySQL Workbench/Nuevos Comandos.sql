show databases;
create schema Viernes13;
use Viernes13;
show tables;
create table tb_usuarios(
	documento varchar(15) not null,
    nombre varchar(50) not null,
    fecha_nac date not null,
    primary key(documento)
);
select database();
 drop table tb_pp;
 describe tb_usuarios;
 select * from tb_usuarios;
 
 
 
 
 create table tb_productos(
	id_producto int not null,
    nombre varchar(50) not null,
    fecha_creacion datetime not null,
    precio double not null,
    documento varchar(15) not null,
    primary key(id_producto)
);
drop table tb_productos;
 describe tb_productos;
 select precio * 0.1 , nombre,  documento from tb_productos;
 
select precio, nombre,  documento from tb_productos WHERE documento = '222';