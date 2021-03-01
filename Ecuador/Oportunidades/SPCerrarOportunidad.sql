ALTER PROC [dbo].[CerrarOportunidad](@jsonCierre NVARCHAR(500), @OportunidadId INT)
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

  exec ConsultarOportunidadXID @OportunidadId

 end