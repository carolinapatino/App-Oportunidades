ALTER PROC [dbo].[BuscarClienteXCodigo] (@CodigoCliente VARCHAR(10))
AS 
BEGIN 
SELECT *
FROM CLIENTE
WHERE CodigoCliente = @CodigoCliente
END