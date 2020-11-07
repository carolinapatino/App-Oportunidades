CREATE PROC ConsultarAccionesXUsuario (@IDUsuario INT  )
AS 
BEGIN 
SELECT  A.AccionId, A.FechaEjecucion, A.AccionAnterior, AC.NombreActividad,A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, O.NombreCliente
FROM Accion A, Actividad Ac, OportunidadDeVenta O 
WHERE A.AsignadaA = @IDUsuario AND Ac.ActividadId = A.TipoActividad 
AND A.Oportunidad = O.OportunidadId AND O.Estatus = 1 AND A.AccionId IN (
select top 1 with ties
   AccionId
from Accion
order by row_number() over (partition by Oportunidad order by AccionId desc)) AND A.FechaEjecucion >= (CONVERT (DATE, SYSDATETIME()))
Order By A.FechaEjecucion DESC
END