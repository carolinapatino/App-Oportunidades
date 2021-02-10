CREATE PROC [dbo].[ConsultarOportunidadXID] (@OportunidadId INT)
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
		
 WHERE	O.OportunidadId = @OportunidadId
	
GROUP BY PO.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
C.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura
END 