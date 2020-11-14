CREATE PROC ConsultarOportunidad (@OportunidadId INT)
AS 
BEGIN 
  SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos
 FROM OportunidadDeVenta O, Estatus E, Origen A, 
(SELECT STRING_AGG (P.NombreProducto, ',') AS Productos , PO.NroOportunidad 
FROM ProductoOportunidad PO, Producto P WHERE PO.ProductoId = P.ProductoId 
GROUP BY PO.NroOportunidad) AS P
 WHERE  E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND O.OportunidadId = @OportunidadId
 
END   