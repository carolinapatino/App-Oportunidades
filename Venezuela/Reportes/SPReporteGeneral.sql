IF (@ESTATUS <> 0 )
BEGIN 
SELECT	O.OportunidadId, O.NombreCliente, E.NombreEstatus, CONVERT(VARCHAR,O.FechaCreacion,3) As FechaCreacion, 
	U.Nombre As Creador, W.Nombre As Vendedor,
		CASE WHEN O.FechaCierre IS NULL THEN DATEDIFF(DAY,O.FechaCreacion, GETDATE()) ELSE NULL END As DiasAbierta, 
		CONVERT (VARCHAR, O.FechaCierre,3) As FechaCierre, A.OrigenNombre, P.Productos,
		SUM(CASE WHEN Ac.TipoActividad = 1 THEN 1 ELSE 0  END ) AS Llamadas, 
		SUM(CASE WHEN Ac.TipoActividad = 2 THEN 1 ELSE 0  END ) AS Visita, 
		SUM(CASE WHEN Ac.TipoActividad = 3 THEN 1 ELSE 0  END ) AS Email,
		SUM(CASE WHEN Ac.TipoActividad = 4 THEN 1 ELSE 0  END ) AS Cotizacion, 
		SUM(CASE WHEN Ac.TipoActividad = 5 THEN 1 ELSE 0  END ) AS Otra
FROM	OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		Accion Ac,
		(SELECT STRING_AGG (P.NombreProducto, ',') AS Productos, NroOportunidad FROM ProductoOportunidad PO, Producto P 
		WHERE PO.ProductoId=P.ProductoId GROUP BY NroOportunidad) AS P, 
		Usuario U,
		Usuario W
WHERE	E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId
		AND Ac.Oportunidad = O.OportunidadId
		AND E.EstatusId =  @Estatus
		AND U.UsuarioId = O.IdCreador
		AND W.VendedorId = O.IdVendedor
		AND (W.RolId = 7 OR W.RolId = 6)
		GROUP BY Ac.Oportunidad, O.OportunidadId, O.NombreCliente, E.NombreEstatus, FechaCreacion, O.IdCreador, O.IdVendedor, 
FechaCierre,A.OrigenNombre,P.Productos, U.Nombre, W.Nombre
END 
ELSE 
BEGIN
	SELECT	O.OportunidadId, O.NombreCliente, E.NombreEstatus, CONVERT(VARCHAR,O.FechaCreacion,3) As FechaCreacion, 
	U.Nombre As Creador, W.Nombre As Vendedor,
		CASE WHEN O.FechaCierre IS NULL THEN DATEDIFF(DAY,O.FechaCreacion, GETDATE()) ELSE NULL END As DiasAbierta, 
		CONVERT (VARCHAR, O.FechaCierre,3) As FechaCierre, A.OrigenNombre, P.Productos,
		SUM(CASE WHEN Ac.TipoActividad = 1 THEN 1 ELSE 0  END ) AS Llamadas, 
		SUM(CASE WHEN Ac.TipoActividad = 2 THEN 1 ELSE 0  END ) AS Visita, 
		SUM(CASE WHEN Ac.TipoActividad = 3 THEN 1 ELSE 0  END ) AS Email,
		SUM(CASE WHEN Ac.TipoActividad = 4 THEN 1 ELSE 0  END ) AS Cotizacion, 
		SUM(CASE WHEN Ac.TipoActividad = 5 THEN 1 ELSE 0  END ) AS Otra
FROM	OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		Accion Ac,
		(SELECT STRING_AGG (P.NombreProducto, ',') AS Productos, NroOportunidad FROM ProductoOportunidad PO, Producto P 
		WHERE PO.ProductoId=P.ProductoId GROUP BY NroOportunidad) AS P, 
		Usuario U,
		Usuario W
WHERE	E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId
		AND Ac.Oportunidad = O.OportunidadId
		AND U.UsuarioId = O.IdCreador
		AND W.VendedorId = O.IdVendedor
		AND (W.RolId = 7 OR W.RolId = 6)
		GROUP BY Ac.Oportunidad, O.OportunidadId, O.NombreCliente, E.NombreEstatus, FechaCreacion, O.IdCreador, O.IdVendedor, 
FechaCierre,A.OrigenNombre,P.Productos, U.Nombre, W.Nombre
END