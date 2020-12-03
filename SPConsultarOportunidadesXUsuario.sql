CREATE PROC ConsultarOportunidadesXUsuario (@IDUsuario INT, @IDVendedor INT)
AS 
BEGIN 
  SELECT TOP 30 *
 FROM (SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos, O.idUsuarioCerrador
 FROM OportunidadDeVenta O, Estatus E, Origen A, (SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P
 WHERE  E.EstatusId =  O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND (O.IdCreador=@IDUsuario OR O.IdVendedor=@IDVendedor) 
 UNION 
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente, O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos, O.idUsuarioCerrador
 FROM OportunidadDeVenta O, Estatus E, Origen A, (SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P
 WHERE  E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND O.OportunidadId IN (SELECT A.Oportunidad FROM Accion A Where A.AsignadaA = @IDUsuario)) AS Oport
 Order By Oport.FechaCreacion DESC
END 
