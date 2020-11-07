CREATE PROC ReporteDeOportunidadesXProductosVend (@ProductoId INT, @UsuarioId INT, @VendedorId INT, @Fecha DATE)
AS 
BEGIN 
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente, O.NombreCliente, O.IdCreador, O.IdVendedor, P.ProductoId
 FROM OportunidadDeVenta O, Estatus E, Origen A, ProductoOportunidad P
 WHERE  E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND P.ProductoId = @ProductoId AND (O.IdCreador = @UsuarioId OR O.IdVendedor= @VendedorId) AND 
 O.FechaCreacion > = @Fecha
END