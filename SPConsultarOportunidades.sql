CREATE PROC ConsultarOportunidades
as 
begin 
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente, O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos
 FROM OportunidadDeVenta O, Estatus E, Origen A, (SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P
 WHERE  E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId 
end