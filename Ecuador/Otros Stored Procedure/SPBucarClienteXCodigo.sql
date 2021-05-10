CREATE PROC [dbo].[BuscarClienteXCodigo] (@CodigoCliente INT)
AS 
BEGIN 
SELECT *
FROM CLIENTE
WHERE CodigoCliente = @CodigoCliente
END