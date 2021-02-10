CREATE PROC [dbo].[ReporteOportunidadesXTipoProductoVend] (@tipoProducto INT, @aPartirDe DATE, @idCreador INT, @idVendedor INT)
 AS 
 BEGIN
 IF @TipoProducto = 1 
 BEGIN
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos , O.FechaReapertura
 FROM OportunidadDeVenta O, Estatus E, Origen A, ProductoOportunidad P, Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND Pr.NombreProducto LIKE '%PAS' 
		AND O.FechaCreacion >= @aPartirDe 
		AND (O.IdCreador = @idCreador
		AND O.IdVendedor = @idVendedor)
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.FechaReapertura
END 
ELSE 
BEGIN 
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, O.FechaReapertura
 FROM OportunidadDeVenta O, Estatus E, Origen A, ProductoOportunidad P, Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND Pr.NombreProducto NOT LIKE '%PAS' 
		AND O.FechaCreacion >= @aPartirDe 
		AND (O.IdCreador = @idCreador
		OR O.IdVendedor = @idVendedor)
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.FechaReapertura
END 
END 