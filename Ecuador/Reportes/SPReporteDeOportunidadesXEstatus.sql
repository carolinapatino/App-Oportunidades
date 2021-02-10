CREATE PROC [dbo].[ReporteDeOportunidadesXEstatus] (@EstatusId INT, @Fecha DATE)
AS 
BEGIN 
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre,
		A.OrigenNombre, E.NombreEstatus, C.NombreCliente,
		O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, STRING_AGG (P.ProductoId, ',') AS Productos
FROM	OportunidadDeVenta O 
		INNER JOIN Estatus E ON O.Estatus = E.EstatusId
		INNER JOIN Origen A ON O.Origen = A.OrigenId
		INNER JOIN ProductoOportunidad PO ON O.OportunidadId = PO.NroOportunidad
		INNER JOIN Producto P ON PO.ProductoId = P.ProductoId
		INNER JOIN Cliente C ON O.CodigoCliente = C.CodigoCliente

WHERE E.EstatusId = @EstatusId 
		AND (O.FechaCreacion >= @Fecha OR O.FechaCierre >= @Fecha)
	
GROUP BY PO.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
C.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura
END




USE [oportunidad_venta]
GO
/****** Object:  StoredProcedure [dbo].[ReporteDeOportunidadesXEstatus]    Script Date: 5/2/2021 1:05:12 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROC [dbo].[ReporteDeOportunidadesXEstatus] (@EstatusId INT, @Fecha DATE)
AS 
BEGIN 
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre,
		A.OrigenNombre, E.NombreEstatus,
		O.CodigoCliente,O.NombreCliente, O.IdCreador, U.Nombre As NombreCreador, 
		O.IdVendedor, V.Nombre AS NombreVendedor, STRING_AGG (Pr.ProductoId, ',') AS ProductosId, STRING_AGG (Pr.NombreProducto, ',') AS Productos,
		O.idUsuarioCerrador, C.Nombre As NombreCerrador, O.FechaReapertura

FROM    OportunidadDeVenta O
		INNER JOIN Estatus E ON E.EstatusId = O.Estatus
		INNER JOIN Origen A ON A.OrigenId = O.Origen
		INNER JOIN ProductoOportunidad P ON P.NroOportunidad = O.OportunidadId
		INNER JOIN Producto Pr ON Pr.ProductoId = P.ProductoId
		INNER JOIN Usuario U ON U.UsuarioId = O.IdCreador
		INNER JOIN Usuario V ON V.VendedorId = O.IdVendedor 
		LEFT OUTER JOIN Usuario C ON C.UsuarioId = O.idUsuarioCerrador

 WHERE  E.EstatusId = @EstatusId
		AND (O.FechaCreacion >= @Fecha OR O.FechaCierre >= @Fecha)
		AND (V.RolId = 7 OR V.RolId = 8)

GROUP BY O.OportunidadId,  P.NroOportunidad, O.FechaCreacion, O.FechaCierre, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura, C.Nombre, U.Nombre, V.Nombre
END