CREATE PROC OportunidadesAbiertasXCliente(
 @CodigoCliente VARCHAR(10)
 )
 AS 
 BEGIN 
 if exists (Select * from OportunidadDeVenta where Estatus = 1 and CodigoCliente = @CodigoCliente)
 SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente, O.NombreCliente, O.IdCreador, O.IdVendedor
 FROM OportunidadDeVenta O, Estatus E, Origen A 
 WHERE  E.EstatusId = 1 AND O.Origen = A.OrigenId AND O.CodigoCliente = @CodigoCliente
 else 
 select OportunidadId = 0
 END 