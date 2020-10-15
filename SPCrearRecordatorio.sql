CREATE PROC CrearRecordatorio (@ProximaAccionId INT)
AS 
BEGIN 
	DECLARE 
	@FechaInicioRecordatorio DATE, 
	@ProximoDiaRecordatorio DATE,
	@FechaEjecucion DATE


	SET @FechaInicioRecordatorio = (SELECT DATEADD (DAY,-Ta.DíasAntesRecordatorio, A.FechaEjecucion) FROM  Actividad Ta, Accion A Where 
	AccionId = @ProximaAccionId AND A.TipoActividad = Ta.ActividadId)

	/*Verifica que al resta los días del parámetro según la actividad no sea menor al día de hoy*/
	IF (@FechaInicioRecordatorio < SYSDATETIME())
	SET @FechaInicioRecordatorio = SYSDATETIME()

	SET @ProximoDiaRecordatorio = (SELECT DATEADD (DAY,Ta.FrecuenciaRecordatorio, @FechaInicioRecordatorio) FROM  Actividad Ta, Accion A Where 
	AccionId = @ProximaAccionId AND A.TipoActividad = Ta.ActividadId)

	SET @FechaEjecucion = (Select FechaEjecucion FROM Accion Where AccionId = @ProximaAccionId)

	/*Verifico que al sumar los días de la frecuencia no sea mayor a la fecha de ejecución*/
	IF (@ProximoDiaRecordatorio > @FechaEjecucion)
	SET @ProximoDiaRecordatorio = @FechaEjecucion


	/*Inserto el recordatorio*/
	IF (EXISTS (Select * FROM Recordatorio Where AccionId = @ProximaAccionId))
	BEGIN 
	UPDATE Recordatorio 
	SET 
	FechaInicioRecordatorio = @FechaInicioRecordatorio,
	PróximoDíaRecordatorio = @ProximoDiaRecordatorio
	WHERE AccionId = @ProximaAccionId
	END
	ELSE
	BEGIN
	INSERT INTO Recordatorio (FechaInicioRecordatorio,PróximoDíaRecordatorio,AccionId)
	VALUES (@FechaInicioRecordatorio, @ProximoDiaRecordatorio, @ProximaAccionId)
	END 

END 