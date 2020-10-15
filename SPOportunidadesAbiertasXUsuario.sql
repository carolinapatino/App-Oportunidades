CREATE PROC OportunidadesAbiertasXUsuario (@IDUsuario INT, @IDVendedor INT)
AS 
BEGIN 
 SELECT COUNT(*)
 FROM OportunidadDeVenta O, Estatus E, Origen A
 WHERE  E.EstatusId = 1 AND O.Origen = A.OrigenId AND (O.IdCreador= @IDUsuario OR O.IdVendedor=@IDVendedor) 
END 
