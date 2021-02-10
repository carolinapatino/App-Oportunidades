ALTER PROC [dbo].[ReporteAccionesXCliente] (@CodigoCliente VARCHAR(10), @Fecha DATE)
 as 
  begin 
  SELECT A.FechaEjecucion, A.DatoEspecifico, A.Descripcion, A.Oportunidad, U.Nombre AS AsignadaA, 
		Ac.NombreActividad, O.NombreCliente, A.PersonaContacto, R.Nombre AS RegistradaPor
  FROM	Accion A 
		INNER JOIN OportunidadDeVenta O ON A.Oportunidad = O.OportunidadId
		INNER JOIN Actividad Ac ON Ac.ActividadId = A.TipoActividad
		INNER JOIN Usuario U ON A.AsignadaA = U.UsuarioId
		LEFT OUTER JOIN Usuario R ON R.UsuarioId = A.RegistradaPor
  WHERE 
		O.CodigoCliente = @CodigoCliente
		AND A.FechaEjecucion >= @Fecha
 end
