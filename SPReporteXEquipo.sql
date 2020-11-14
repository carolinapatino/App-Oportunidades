CREATE PROC ReporteXEquipo (@EquipoId INT, @Fecha DATE)
AS 
BEGIN
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos , U.Nombre
 FROM OportunidadDeVenta O, 
	  Estatus E, 
	  Origen A, 
	  Usuario U,
	  (SELECT STRING_AGG (ProductoId, ',') AS Productos,  NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P, 
	  (Select UsuarioId from UsuarioEquipo Where EquipoId = @EquipoId) AS Eq
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND IdCreador = Eq.UsuarioId
		AND Eq.UsuarioId = U.UsuarioId
		AND O.FechaCreacion > = @Fecha
		AND O.EstatusId = 1 
		
UNION
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos, UE.Nombre
 FROM OportunidadDeVenta O, 
	  Estatus E, 
	  Origen A,
	  (SELECT STRING_AGG (ProductoId, ',') AS Productos,  NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P,
	  (Select U.VendedorId, U.Nombre from UsuarioEquipo UE, Usuario U Where UE.EquipoId = @EquipoId AND  U.UsuarioId = UE.UsuarioId) AS UE
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND IdVendedor= UE.VendedorId
		AND O.FechaCreacion > = @Fecha
		AND O.EstatusId = 1 
END