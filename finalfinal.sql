drop database if exists proyecto;
create database proyecto;
use proyecto;



create table Usuario(Compania varchar(60), NombreEmpleado varchar(30), edad int, sexo varchar(20), correo varchar(60), telefono int, CodSec varchar(10), contraseña varchar(60), tipou varchar(60));
alter table Usuario add primary key(correo);

create table Codigo (Codigo varchar(10), Compania varchar(60), fecha timestamp);
alter table Codigo add primary key(Codigo);
alter table Usuario add foreign key(CodSec) references Codigo(Codigo);

create table Vehiculo (IdVehiculo int, NombreVehiculo varchar(20), marca varchar(20), modelo varchar(20),placas varchar(30), numeroSerie varchar(30), numeroMotor varchar(30),  Costo int);
alter table Vehiculo add primary key(IdVehiculo); 

create table Siniestro (IdSiniestro int, Compania varchar(60),correoU varchar(60), IdVehiculo int, asegurado varchar(30), poliza varchar(30), vigenciaPoliza varchar(30), fechaSiniestro varchar(30), fechaAperturaCaso varchar(30), fechaClausuraCaso varchar(30), Informe varchar(2000) );
alter table Siniestro add primary key (IdSiniestro);
alter table Siniestro add foreign key (correoU) references Usuario(correo);
alter table Siniestro add foreign Key (IdVehiculo) references vehiculo (IdVehiculo);


create table archivos (idarchivo int,  fil longblob,  idsiniestro int);
alter table archivos add primary key (idarchivo);
alter table archivos add foreign key (idsiniestro) references Siniestro (IdSiniestro);
create table quejas(idq int, tipo varchar(20), definicion varchar(100), correo varchar(60)); 
alter table quejas add primary key (idq);
alter table quejas add foreign key (correo) references Usuario (correo); 
ALTER TABLE quejas CHANGE COLUMN idq idq INT(11) NOT NULL AUTO_INCREMENT ;
insert into codigo values('asdfg123','wibe','02/12/15');
insert into codigo values('1234','lol','21/12/15');
insert into codigo values('123456','wedart','21/12/15');
insert into usuario values('wibe', 'Juan', '15','Masculino','juanitopro12@gmail.com','514332523','asdfg123','264c34ca1d5e413dc23e5f77c9319f468ded71b1','usuario');
insert into usuario values('lol', 'RAFAEL', '15','Masculino','rafassassinscreed@gmail.com','514332523','1234','264c34ca1d5e413dc23e5f77c9319f468ded71b1','usuario');
insert into usuario values('wedart', 'wedart', '45','Masculino','root@hotmail.com','514332523','123456','9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684','administrador');
insert into Vehiculo values('69','asd','patito','1969','ztzr67','321f','f23','6900');
insert into codigo values('12345','origen','02/12/15');
insert into codigo values('54321','origin','02/12/15');
select * from Siniestro;

select * from Usuario;
select * from vehiculo;
select * from archivos;
