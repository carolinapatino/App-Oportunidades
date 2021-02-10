CREATE  PROC [dbo].[OportunidadesAbiertasXUsuario] (@IDUsuario INT, @IDVendedor INT)
AS 
BEGIN 
 SELECT COUNT(*)
 FROM OportunidadDeVenta O
 WHERE  O.Estatus = 1 AND (O.IdCreador= @IDUsuario OR O.IdVendedor=@IDVendedor) 
END 