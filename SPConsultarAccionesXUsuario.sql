CREATE PROC ConsultarAccionesXUsuario (@IDUsuario INT, @Hoy DATE  )
AS 
BEGIN 
SELECT A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA
FROM Accion A, Actividad Ac
WHERE A.AsignadaA = @IDUsuario AND A.FechaEjecucion >= @Hoy
END
