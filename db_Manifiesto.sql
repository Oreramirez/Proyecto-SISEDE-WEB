create database db_manifiesto
go

use db_manifiesto
go

--table user type
if(not exists(select 1 from sys.tables where name= 'Manifiesto'))
	create table dbo.Manifiesto(
	manifiesto_id int identity(1,1) NOT NULL,
	dnipasajero VARCHAR(50) NOT NULL,
	nombre VARCHAR(50) NOT NULL,
	origen VARCHAR(150) NOT NULL,
	destino VARCHAR(150) NOT NULL, 
	fechaviaje datetime NOT  NULL,
	horapartida datetime NOT NULL, 
	asiento VARCHAR(10) NOT NULL, 
	placa VARCHAR(150) NOT NULL, 
	conductor VARCHAR(150) NOT NULL, 
	
		PRIMARY KEY(manifiesto_id)
	)
GO

