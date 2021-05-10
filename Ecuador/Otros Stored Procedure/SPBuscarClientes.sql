CREATE PROC [dbo].[BuscarCliente] (@NombreCliente VARCHAR(40))
AS 
BEGIN 
SELECT *
FROM CLIENTE
WHERE NombreCliente LIKE '%' +@NombreCliente+ '%'
END
