
ALTER PROC [dbo].[ReporteXEquipo] (@EquipoId INT, @Fecha DATE)
AS 
BEGIN
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre,
		A.OrigenNombre, E.NombreEstatus,
		O.CodigoCliente,O.NombreCliente, O.IdCreador, U.Nombre As NombreCreador, 
		O.IdVendedor, V.Nombre AS NombreVendedor, STRING_AGG (Pr.ProductoId, ',') AS Productos, STRING_AGG (Pr.NombreProducto, ',') AS ProductosNombre,
		O.idUsuarioCerrador, C.Nombre As NombreCerrador, O.FechaReapertura

FROM    OportunidadDeVenta O
		INNER JOIN Estatus E ON E.EstatusId = O.Estatus
		INNER JOIN Origen A ON A.OrigenId = O.Origen
		INNER JOIN ProductoOportunidad P ON P.NroOportunidad = O.OportunidadId
		INNER JOIN Producto Pr ON Pr.ProductoId = P.ProductoId
		INNER JOIN Usuario U ON U.UsuarioId = O.IdCreador
		INNER JOIN Usuario V ON V.VendedorId = O.IdVendedor 
		LEFT OUTER JOIN Usuario C ON C.UsuarioId = O.idUsuarioCerrador
		INNER JOIN UsuarioEquipo Eq ON Eq.UsuarioId = O.IdCreador
		LEFT OUTER JOIN UsuarioEquipo UE ON UE.UsuarioId = V.UsuarioId

 WHERE  
		(O.FechaCreacion >= @Fecha OR O.FechaCierre >= @Fecha)
		AND (V.RolId = 6 OR V.RolId = 7)
		AND (Eq.EquipoId = @EquipoId
		OR UE.EquipoId = @EquipoId)


GROUP BY O.OportunidadId,  P.NroOportunidad, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura, C.Nombre, U.Nombre, V.Nombre
		
END

