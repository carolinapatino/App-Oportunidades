CREATE PROC [dbo].[ConsultarAccionesVencidasXUsuario] (@UsuarioId INT)
AS 
BEGIN 


SELECT A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, O.NombreCliente
FROM Accion A, Actividad Ac, OportunidadDeVenta O 
WHERE A.AsignadaA = @UsuarioId AND A.FechaEjecucion < (CONVERT (DATE, SYSDATETIME())) AND Ac.ActividadId = A.TipoActividad 
AND A.Oportunidad = O.OportunidadId AND A.AccionId  NOT IN (Select AccionAnterior from Accion)
END