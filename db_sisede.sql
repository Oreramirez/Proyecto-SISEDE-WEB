create database db_sisede
go

use db_sisede
go

--table user type
if(not exists(select 1 from sys.tables where name= 'TipoUsuario'))
	create table dbo.TipoUsuario(
	tipousuario_id int identity(1,1) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	PRIMARY KEY(tipousuario_id)
	)
GO


--table user
-- Added Jurisdiccion
if(not exists(select 1 from sys.tables where name= 'Usuario'))
	create table dbo.Usuario(
	usuario_id int identity(1,1) NOT NULL,
	tipousuario_id int NOT NULL,
	nombre varchar(150) NOT NULL,
	apellido varchar(250) NOT NULL,
	nombreusu varchar(150) NOT NULL,
	clave varchar(100) NOT NULL,
	estado char(1) NOT NULL,
	jurisdiccion varchar(150) NOT NULL,
	PRIMARY KEY (usuario_id),
	FOREIGN KEY (tipousuario_id) REFERENCES TipoUsuario(tipousuario_id)
	)
GO



--table Person
if(not exists(select 1 from sys.tables where name= 'Persona'))
	create table dbo.Persona(
	persona_id int identity(1,1) NOT NULL,
	manifiesto_id int NOT NULL,
	nombre varchar(150) NOT NULL,
	apellido varchar(250) NOT NULL,
	dni varchar(150) NOT NULL,
	condicion varchar(100) NOT NULL,
	estadocivil char(1) NOT NULL,
	requisotoria_id varchar(100) NOT NULL,

	PRIMARY KEY (persona_id)
	
	)
GO

--table Search
if(not exists(select 1 from sys.tables where name= 'Busqueda'))
	create table dbo.Busqueda(
	busqueda_id int identity(1,1) NOT NULL,
	persona_id int NOT NULL,
	requisitoria_id varchar(150) NOT NULL,
	usuario_id varchar(250) NOT NULL,
	resultado_id varchar(150) NOT NULL,
	clave varchar(100) NOT NULL,
	fecha datetime NOT NULL,
	
	PRIMARY KEY (usuario_id),
	FOREIGN KEY (persona_id) REFERENCES Persona(persona_id)
	)
GO


