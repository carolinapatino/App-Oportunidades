CREATE PROC BuscarEnOportunidades (@CampoBusqueda VARCHAR(30))
AS 
BEGIN 
SELECT TOP 30 O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, O.idUsuarioCerrador
FROM OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		ProductoOportunidad P, 
		Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND (CONTAINS ((O.NombreCliente,O.Objetivo), @CampoBusqueda) OR CONTAINS (E.NombreEstatus, @CampoBusqueda))
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador
END 


