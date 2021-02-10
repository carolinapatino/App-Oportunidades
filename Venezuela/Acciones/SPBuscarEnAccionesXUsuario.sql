CREATE PROC [dbo].[BuscarEnAccionesXUsuario] (@IDUsuario INT, @CampoBusqueda VARCHAR(30))
AS 
BEGIN 

SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, 
A.AsignadaA, O.NombreCliente, A.PersonaContacto
FROM	Accion A, 
		Actividad Ac, 
		OportunidadDeVenta O 
WHERE	A.FechaEjecucion >= (CONVERT (DATE, SYSDATETIME())) 
		AND Ac.ActividadId = A.TipoActividad 
		AND A.Oportunidad = O.OportunidadId 
		AND (CONTAINS(O.NombreCliente, @CampoBusqueda) Or CONTAINS (AC.NombreActividad, @CampoBusqueda))
		AND A.AsignadaA = @IDUsuario 
Order By A.FechaEjecucion DESC
END