CREATE PROC BuscarClienteXCodigo (@CodigoCliente VARCHAR(5))
AS 
BEGIN 
SELECT CodigoCliente,RUC,NombreCliente, Telefono, Correo, VendedorAsociado 
FROM CLIENTE
WHERE CodigoCliente = @CodigoCliente
END