CREATE PROC [dbo].[ModificarRecordatorio](@ProximaAccionId INT)
AS 
BEGIN 
	DECLARE 
	@ProximoDiaRecordatorio DATE,
	@FechaEjecucion DATE

	SET @ProximoDiaRecordatorio = (SELECT DATEADD (DAY,Ta.FrecuenciaRecordatorio, R.PróximoDíaRecordatorio) FROM  Actividad Ta, Accion A , Recordatorio R 
	Where 
	A.AccionId = @ProximaAccionId AND A.TipoActividad = Ta.ActividadId)

	SET @FechaEjecucion = (Select FechaEjecucion FROM Accion Where AccionId = @ProximaAccionId)

	/*Verifico que al sumar los días de la frecuencia no sea mayor a la fecha de ejecución*/
	IF (@ProximoDiaRecordatorio > @FechaEjecucion)
	SET @ProximoDiaRecordatorio = @FechaEjecucion

	UPDATE Recordatorio 
	SET 
	PróximoDíaRecordatorio = @ProximoDiaRecordatorio
	WHERE AccionId = @ProximaAccionId
	END
