create database DBCRUD_NETCORE

use DBCRUD_NETCORE

create table CONTACTO(
	IdContacto int identity primary key,
	Nombre varchar(50),
	Telefono varchar(50),
	Correo varchar(50)
)

-------------------------------- STORE PROCEDURES --------------------------------------------



create procedure sp_Listar
as
begin
	select * from CONTACTO
end





create procedure sp_Obtener(
@IdContacto int
)
as
begin
	select * from CONTACTO where IdContacto = @IdContacto
end





create procedure sp_Guardar(
@Nombre varchar(100),
@Telefono varchar (100),
@Correo varchar(100)
) 
as 
begin
	insert into CONTACTO(Nombre,Telefono,Correo) values(@Nombre,@Telefono,@Correo)
end






create procedure sp_editar(
@IdContacto int,
@Nombre varchar(100),
@Telefono varchar (100),
@Correo varchar(100)
)
as
begin 
	update CONTACTO set Nombre = @Nombre, Telefono = @Telefono, Correo = @Correo where IdContacto = @IdContacto
end








create procedure sp_Eliminar (
@IdContacto int
)
as
begin
	delete from CONTACTO where IdContacto = @IdContacto
end



	select * from CONTACTO