CREATE PROC [dbo].[ConsultarAccionesXUsuario] (@IDUsuario INT)
AS 
BEGIN 
SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, A.PersonaContacto, C.NombreCliente
FROM	Accion A
		INNER JOIN Actividad Ac ON Ac.ActividadId = A.TipoActividad
		INNER JOIN OportunidadDeVenta O ON O.OportunidadId = A.Oportunidad
		INNER JOIN Cliente C ON C.CodigoCliente = O.CodigoCliente
 
WHERE	A.AsignadaA = @IDUsuario 
		AND O.Estatus = 1 
		AND A.AccionId IN (
		select top 1 with ties
		AccionId
		from Accion
		order by row_number() over (partition by Oportunidad order by AccionId desc)) 
		AND A.FechaEjecucion >= (CONVERT (DATE, SYSDATETIME()))
END