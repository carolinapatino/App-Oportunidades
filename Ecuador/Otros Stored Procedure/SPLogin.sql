CREATE PROC LOGIN (@Correo VARCHAR(100), @Contraseña VARCHAR(10))
AS
BEGIN
SELECT Nombre,UsuarioId,RolId,Correo 
FROM USUARIO
WHERE Correo=@Correo
AND CONTRASEña=@Contraseña
END