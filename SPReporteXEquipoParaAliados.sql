CREATE PROC ReporteXEquipoParaAliados (@Vendedor INT, @Fecha DATE) 
AS 
BEGIN 
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, U.Nombre
 FROM OportunidadDeVenta O, 
	  Estatus E, 
	  Origen A, 
	  Usuario U,
	  ProductoOportunidad P, 
	  Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND O.IdCreador = U.UsuarioId
		AND U.VendedorId = @Vendedor
		AND O.FechaCreacion > = @Fecha
		AND O.Estatus = 1 
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador,U.Nombre
END