CREATE PROC ConsultarCorreos (@IdCreador INT, @IdVendedor INT, @IdCerrador INT)
AS 
BEGIN 
SELECT U.Correo 
FROM Usuario U
WHERE U.UsuarioId = @IdCreador
OR (U.VendedorId = @IdVendedor AND U.RolId = 7)
OR U.UsuarioId = @IdCerrador
END 

