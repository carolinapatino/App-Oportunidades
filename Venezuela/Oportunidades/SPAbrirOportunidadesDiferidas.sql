
CREATE PROC [dbo].[AbrirOportunidadesDiferidas]
as
begin
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, STRING_AGG (P.ProductoId, ',') AS Productos
FROM	OportunidadDeVenta O, 
		Estatus E, 
		Origen A,
		ProductoOportunidad P, 
		Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND E.EstatusId = 4
		AND O.Origen = A.OrigenId 
		AND O.fechaReapertura = (CONVERT (DATE, SYSDATETIME()))
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura
end