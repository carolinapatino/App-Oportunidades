CREATE PROC ReporteDeOportunidadesXProductos (@ProductoId INT, @Fecha DATE)
AS 
BEGIN 
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente, O.NombreCliente, O.IdCreador, O.IdVendedor, Prod.Productos
 FROM OportunidadDeVenta O, Estatus E, Origen A, ProductoOportunidad P, 
 (SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS Prod 
 WHERE  E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND Prod.NroOportunidad = O.OportunidadId AND 
 P.ProductoId = @ProductoId AND P.NroOportunidad = O.OportunidadId AND O.FechaCreacion >= @Fecha
END