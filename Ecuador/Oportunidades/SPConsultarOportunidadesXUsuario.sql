CREATE PROC [dbo].[ConsultarOportunidadesXUsuario] (@IDUsuario INT, @IDVendedor INT)
AS 
BEGIN 
  SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre,
		A.OrigenNombre, E.NombreEstatus, C.CodigoCliente, C.NombreCliente, 
		O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, STRING_AGG (P.ProductoId, ',') AS Productos
FROM	OportunidadDeVenta O 
		INNER JOIN Estatus E ON O.Estatus = E.EstatusId
		INNER JOIN Origen A ON O.Origen = A.OrigenId
		INNER JOIN ProductoOportunidad PO ON O.OportunidadId = PO.NroOportunidad
		INNER JOIN Producto P ON PO.ProductoId = P.ProductoId
		INNER JOIN Cliente C ON O.CodigoCliente = C.CodigoCliente

WHERE  O.Estatus = 1 
	   AND O.IdCreador = @IDUsuario
	   OR O.IdVendedor = @IDVendedor
	
GROUP BY PO.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
C.CodigoCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, C.NombreCliente

ORDER BY FechaCreacion
END 