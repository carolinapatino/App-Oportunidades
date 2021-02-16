ALTER PROC [dbo].[ReporteOportunidadesXTipoProducto] (@tipoProducto INT, @aPartirDe DATE)
AS 
BEGIN 
 IF @TipoProducto = 1 
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

 WHERE 
		O.FechaCreacion >= @aPartirDe
		AND (V.RolId = 6 OR V.RolId = 7)
		AND Pr.NombreProducto LIKE '%PAS' 

GROUP BY O.OportunidadId,  P.NroOportunidad, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura, C.Nombre, U.Nombre, V.Nombre

END 
ELSE 
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

 WHERE 
		O.FechaCreacion >= @aPartirDe
		AND (V.RolId = 6 OR V.RolId = 7)
		AND Pr.NombreProducto NOT LIKE '%PAS' 

GROUP BY O.OportunidadId,  P.NroOportunidad, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura, C.Nombre, U.Nombre, V.Nombre

END
END