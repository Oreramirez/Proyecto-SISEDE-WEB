create database db_PoderJudicial
go

use db_PoderJudicial
go

--table persona 
if(not exists(select 1 from sys.tables where name= 'Requisitoria'))
	create table dbo.Requisitoria(
	requisitoria_id int identity(1,1) NOT NULL,
	nroregistro varchar(20) NOT NULL,
	fecharegistro datetime NOT NULL,
	tiporeq varchar(100) NOT NULL,
	delito varchar(100) NOT NULL,
	estado varchar(100) NOT NULL,
	autoridad varchar(100) NOT NULL,
	lugarautoridad varchar(100) NOT NULL,
	tipodoc varchar(100) NOT NULL,
	nrodoc varchar(100) NOT NULL,
	anodoc varchar(100) NOT NULL,
	fechadoc datetime NOT NULL,
	nroinstruccion varchar(100) NOT NULL,
	añoinstruccion varchar(100) NOT NULL,
	tcaducidad varchar(100) NOT NULL,
	fechacad datetime

	PRIMARY KEY(requisitoria_id)
	)
GO


--table persona 
if(not exists(select 1 from sys.tables where name= 'Persona'))
	create table dbo.Persona(
	requisitoria_id int identity(1,1) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	apellido VARCHAR(50) NOT NULL,
	tipodoc VARCHAR(50) NOT NULL,
	nrodoc VARCHAR(50) NOT NULL,
	edad VARCHAR(50) NOT NULL,
	fechanac datetime NOT NULL,
	lugarnac VARCHAR(150) NOT NULL,
	
	nombpadre VARCHAR(150) NOT NULL,
	nombmadre VARCHAR(150) NOT NULL,
	nroregistro varchar(20) NOT NULL

	PRIMARY KEY(nrodoc)
	FOREIGN KEY (requisitoria_id) REFERENCES Requisitoria(requisitoria_id)
	)
GO


