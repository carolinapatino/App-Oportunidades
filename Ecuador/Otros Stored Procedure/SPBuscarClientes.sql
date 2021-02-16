ALTER PROC BuscarClientes (@NombreCliente VARCHAR(40))
AS 
BEGIN 
SELECT CodigoCliente,RUC,NombreCliente, Telefono, Correo, VendedorAsociado 
FROM CLIENTE
WHERE NombreCliente LIKE '%' + @NombreCliente
END


