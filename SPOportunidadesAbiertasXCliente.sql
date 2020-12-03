CREATE PROC OportunidadesAbiertasXCliente(
 @CodigoCliente VARCHAR(10)
 )
 AS 
 BEGIN 
  IF EXISTS (Select * from OportunidadDeVenta where Estatus = 1 and CodigoCliente = @CodigoCliente)
SELECT TOP 1 O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, O.idUsuarioCerrador
FROM	OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		ProductoOportunidad P, 
		Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND O.CodigoCliente = @CodigoCliente
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador
 ELSE
 SELECT OportunidadId = 0

 END 