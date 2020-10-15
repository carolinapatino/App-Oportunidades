CREATE PROC ModificarRecordatoriosXActividad (@jsonActividad NVARCHAR(500))
 as 
  begin 
  WITH ActividadLlamada as(
    SELECT
          DíasAntesRecordatorio, 
		  FrecuenciaRecordatorio
        FROM OPENJSON(@jsonActividad)
        WITH (
        DíasAntesRecordatorio INT '$.diasAntesLlamadaRecordatorio', 
        FrecuenciaRecordatorio INT '$.frecuenciaLlamadaRecordatorio'
        ) AS jsonValues
    )
  UPDATE Actividad SET
  DíasAntesRecordatorio = ac.DíasAntesRecordatorio,
  FrecuenciaRecordatorio= ac.FrecuenciaRecordatorio
  FROM ActividadLlamada ac
  WHERE ActividadId = 1;

  WITH ActividadVisita as(
    SELECT
          DíasAntesRecordatorio, 
		  FrecuenciaRecordatorio
        FROM OPENJSON(@jsonActividad)
        WITH (
        DíasAntesRecordatorio INT '$.diasAntesVisitaRecordatorio', 
        FrecuenciaRecordatorio INT '$.frecuenciaVisitaRecordatorio'
        ) AS jsonValues
    )
  UPDATE Actividad SET
  DíasAntesRecordatorio = ac.DíasAntesRecordatorio,
  FrecuenciaRecordatorio= ac.FrecuenciaRecordatorio
  FROM ActividadVisita ac
  WHERE ActividadId = 2;

  WITH ActividadEmail as(
    SELECT
          DíasAntesRecordatorio, 
		  FrecuenciaRecordatorio
        FROM OPENJSON(@jsonActividad)
        WITH (
        DíasAntesRecordatorio INT '$.diasAntesEmailRecordatorio', 
        FrecuenciaRecordatorio INT '$.frecuenciaEmailRecordatorio'
        ) AS jsonValues
    )
  UPDATE Actividad SET
  DíasAntesRecordatorio = ac.DíasAntesRecordatorio,
  FrecuenciaRecordatorio= ac.FrecuenciaRecordatorio
  FROM ActividadEmail ac
  WHERE ActividadId = 3;

  WITH ActividadCotizacion as(
    SELECT
          DíasAntesRecordatorio, 
		  FrecuenciaRecordatorio
        FROM OPENJSON(@jsonActividad)
        WITH (
        DíasAntesRecordatorio INT '$.diasAntesCotizacionRecordatorio', 
        FrecuenciaRecordatorio INT '$.frecuenciaCotizacionRecordatorio'
        ) AS jsonValues
    )
  UPDATE Actividad SET
  DíasAntesRecordatorio = ac.DíasAntesRecordatorio,
  FrecuenciaRecordatorio= ac.FrecuenciaRecordatorio
  FROM ActividadCotizacion ac
  WHERE ActividadId = 4;

  WITH ActividadOtra as(
    SELECT
          DíasAntesRecordatorio, 
		  FrecuenciaRecordatorio
        FROM OPENJSON(@jsonActividad)
        WITH (
        DíasAntesRecordatorio INT '$.diasAntesOtraRecordatorio', 
        FrecuenciaRecordatorio INT '$.frecuenciaOtraRecordatorio'
        ) AS jsonValues
    )
  UPDATE Actividad SET
  DíasAntesRecordatorio = ac.DíasAntesRecordatorio,
  FrecuenciaRecordatorio= ac.FrecuenciaRecordatorio
  FROM ActividadOtra ac
  WHERE ActividadId = 5;
   select * from Actividad
 end

