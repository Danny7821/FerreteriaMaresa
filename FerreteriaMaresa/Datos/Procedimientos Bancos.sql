use Ferreteria_Maresa
go

--Mostrar Bancos
create PROCEDURE Mostrar_Bancos
as
SELECT        id_banco AS 'Id Banco', descripcion AS Nombre, direccion AS Direcci�n, ciudad AS Ciudad, region AS Regi�n, codigo_postal AS 'Codigo Postal'
FROM            dbo.Bancos
order by dbo.Bancos.id_banco ASC
go
exec Mostrar_Bancos
go

create PROCEDURE Buscar_Bancos
@id_banco int
as
SELECT        id_banco AS 'Id Banco', descripcion AS Nombre, direccion AS Direcci�n, ciudad AS Ciudad, region AS Regi�n, codigo_postal AS 'Codigo Postal'
FROM            dbo.Bancos
	where Bancos.id_banco = @id_banco

exec Buscar_Bancos 1