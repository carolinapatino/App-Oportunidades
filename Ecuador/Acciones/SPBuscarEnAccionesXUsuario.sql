CREATE PROC [dbo].[BuscarEnAccionesXUsuario] (@IDUsuario INT, @CampoBusqueda VARCHAR(30))
AS 
BEGIN 

SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, A.PersonaContacto
FROM	Accion A 
		INNER JOIN Actividad Ac ON A.TipoActividad = Ac.NombreActividad
		INNER JOIN OportunidadDeVenta O ON O.OportunidadId = A.Oportunidad
		INNER JOIN Cliente C ON C.ClienteId = O.CodigoCliente
	
WHERE	A.FechaEjecucion >= (CONVERT (DATE, SYSDATETIME())) 
		AND CONTAINS(C.NombreCliente, @CampoBusqueda) 
		Or CONTAINS (AC.NombreActividad, @CampoBusqueda)
		AND A.AsignadaA = @IDUsuario 

Order By A.FechaEjecucion DESC
END