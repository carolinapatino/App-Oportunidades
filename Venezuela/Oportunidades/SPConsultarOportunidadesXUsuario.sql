CREATE PROC [dbo].[ConsultarOportunidadesXUsuario] (@IDUsuario INT, @IDVendedor INT)
AS 
BEGIN 
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, 
		A.OrigenNombre, E.NombreEstatus, O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos,	
		O.idUsuarioCerrador, O.FechaReapertura
 FROM	OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		(SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P
 WHERE  E.EstatusId =  O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND (O.IdCreador=@IDUsuario OR O.IdVendedor=@IDVendedor) 
		AND E.EstatusId = 1
 Order By O.FechaCreacion 
END 