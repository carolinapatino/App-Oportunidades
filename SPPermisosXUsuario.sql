CREATE PROC PermisosXUsuario (@UsuarioId INT)
AS 
BEGIN 
If EXISTS (Select Permiso
FROM PermisoUsuario 
WHERE Usuario = @UsuarioId)
Select Permiso
FROM PermisoUsuario 
WHERE Usuario = @UsuarioId
ELSE 
SELECT Permiso = 0
END