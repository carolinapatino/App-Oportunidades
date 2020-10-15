CREATE PROC CerrarOportunidad(@jsonCierre NVARCHAR(500), @OportunidadId INT)
 as 
 begin 
  WITH JSONCierre as(
    SELECT
          ObservacionDeCierre
         ,FechaCierre
         ,Estatus
        FROM OPENJSON(@jsonCierre)
        WITH (
        ObservacionDeCierre VARCHAR(280) '$.observacionCierre', 
        FechaCierre DATE '$.fechaCierre',
        Estatus INT '$.estatus'
        ) AS jsonValues
    )
  UPDATE OportunidadDeVenta SET
  ObservacionDeCierre = c.ObservacionDeCierre,
  FechaCierre= c.FechaCierre,
  Estatus= c.Estatus
  FROM JSONCierre c
  WHERE OportunidadId = @OportunidadId 
 end

 