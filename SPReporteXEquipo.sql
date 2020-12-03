CREATE PROC ReporteXEquipo (@EquipoId INT, @Fecha DATE)
AS 
BEGIN
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, U.Nombre
 FROM OportunidadDeVenta O, 
	  Estatus E, 
	  Origen A, 
	  Usuario U,
	  ProductoOportunidad P, 
	  Producto Pr,
	  UsuarioEquipo Eq
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND IdCreador = Eq.UsuarioId
		AND Eq.UsuarioId = U.UsuarioId
		AND Eq.EquipoId = @EquipoId
		AND O.FechaCreacion > = @Fecha
		AND O.Estatus = 1 
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador,U.Nombre
UNION
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, U.Nombre
 FROM OportunidadDeVenta O, 
	  Estatus E, 
	  Origen A, 
	  Usuario U,
	  ProductoOportunidad P, 
	  Producto Pr,
	  UsuarioEquipo Eq
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND (U.RolId = 7 OR U.RolId = 6)
		AND IdVendedor = U.VendedorId
		AND Eq.UsuarioId = U.UsuarioId
		AND Eq.EquipoId = @EquipoId
		AND O.FechaCreacion > = @Fecha
		AND O.Estatus = 1 
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador,U.Nombre
END