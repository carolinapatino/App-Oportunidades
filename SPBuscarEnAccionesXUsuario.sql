CREATE PROC BuscarAccionesXUsuario (@IDUsuario INT, @CampoBusqueda VARCHAR(20))
AS 
BEGIN 

SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, O.NombreCliente
FROM Accion A, Actividad Ac, OportunidadDeVenta O 
WHERE A.AsignadaA = @IDUsuario AND A.FechaEjecucion >= (CONVERT (DATE, SYSDATETIME())) AND Ac.ActividadId = A.TipoActividad 
AND A.Oportunidad = O.OportunidadId AND (CONTAINS(O.NombreCliente, @CampoBusqueda) Or CONTAINS (AC.NombreActividad, @CampoBusqueda))
Order By A.FechaEjecucion DESC
END