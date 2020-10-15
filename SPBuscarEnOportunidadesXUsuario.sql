CREATE PROC BuscarEnOportunidadesXUsuario (@IDUsuario INT, @CampoBusqueda VARCHAR(20), @IDVendedor INT)
AS 
BEGIN 
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, P.Productos
 FROM OportunidadDeVenta O, Estatus E, Origen A, (SELECT STRING_AGG (ProductoId, ',') AS Productos, NroOportunidad FROM ProductoOportunidad GROUP BY NroOportunidad) AS P
 WHERE E.EstatusId = O.Estatus AND O.Origen = A.OrigenId AND P.NroOportunidad = O.OportunidadId AND (O.IdCreador=@IDUsuario OR O.IdVendedor=@IDVendedor) 
 AND (CONTAINS ((O.NombreCliente,O.Objetivo), @CampoBusqueda) OR CONTAINS (E.NombreEstatus, @CampoBusqueda))
END 