CREATE PROC [dbo].[ConsultarCorreos] (@IdCreador INT, @IdVendedor INT, @IdCerrador INT)
AS 
BEGIN 
SELECT U.Correo 
FROM Usuario U
WHERE U.UsuarioId = @IdCreador
OR U.UsuarioId = @IdVendedor 
OR U.UsuarioId = @IdCerrador
END 
