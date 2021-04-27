CREATE PROC [dbo].[CerrarOportunidad](@jsonCierre NVARCHAR(500), @OportunidadId INT)
 as 
 begin 
  WITH JSONCierre as(
    SELECT
          ObservacionDeCierre
         ,FechaCierre
         ,Estatus
		 ,IDUsuarioCerrador
		 ,FechaReapertura
        FROM OPENJSON(@jsonCierre)
        WITH (
        ObservacionDeCierre VARCHAR(280) '$.observacionCierre', 
        FechaCierre DATE '$.fechaCierre',
        Estatus INT '$.estatus',
		IDUsuarioCerrador INT '$.idUsuarioCerrador',
		FechaReapertura DATE '$.fechaReapertura'
        ) AS jsonValues
    )
  UPDATE OportunidadDeVenta SET
  ObservacionDeCierre = c.ObservacionDeCierre,
  FechaCierre= c.FechaCierre,
  Estatus= c.Estatus, 
  idUsuarioCerrador = c.IDUsuarioCerrador,
  FechaReapertura = c.FechaReapertura
  FROM JSONCierre c
  WHERE OportunidadId = @OportunidadId 

  
SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, O.idUsuarioCerrador, O.FechaReapertura
FROM OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		ProductoOportunidad P, 
		Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND O.OportunidadId = @OportunidadId
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura

 end

 