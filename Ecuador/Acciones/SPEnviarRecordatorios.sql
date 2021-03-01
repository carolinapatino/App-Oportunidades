 ALTER PROC [dbo].[EnviarRecordatorios] 
as
begin
SELECT A.AccionId, A.FechaEjecucion, AC.NombreActividad, A.AccionAnterior, A.DatoEspecifico, A.Descripcion,A.Oportunidad, R.PróximoDíaRecordatorio, U.Nombre, U.Correo, C.NombreCliente
FROM 
	Accion A
	INNER JOIN Actividad Ac ON Ac.ActividadId = A.TipoActividad 
	INNER JOIN OportunidadDeVenta O ON O.OportunidadId = A.Oportunidad 
	INNER JOIN Recordatorio R ON R.AccionId = A.AccionId
	INNER JOIN Usuario U ON U.UsuarioId = A.AsignadaA
	INNER JOIN Cliente C ON C.CodigoCliente = O.CodigoCliente

WHERE  A.AccionId IN (
		select top 1 with ties
		   AccionId
		from Accion
		order by row_number() over (partition by Oportunidad order by AccionId desc)) AND A.AccionId = R.AccionId  AND A.FechaEjecucion >= SYSDATETIME()

end