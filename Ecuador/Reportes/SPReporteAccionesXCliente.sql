CREATE PROC [dbo].[ReporteAccionesXCliente] (@CodigoCliente VARCHAR(10), @Fecha DATE)
 as 
  begin 
 
SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, A.PersonaContacto
FROM	Accion A
		INNER JOIN Actividad Ac ON Ac.ActividadId = A.TipoActividad
		INNER JOIN OportunidadDeVenta O ON O.OportunidadId = A.Oportunidad
 
WHERE	O.CodigoCliente = @CodigoCliente 
		AND A.FechaEjecucion >= @Fecha
		
 end
