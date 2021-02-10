 CREATE PROC [dbo].[EnviarRecordatorios] 
as
begin
SELECT A.AccionId, A.FechaEjecucion, AC.NombreActividad, A.AccionAnterior, A.DatoEspecifico, A.Descripcion,A.Oportunidad, A.AsignadaA, O.NombreCliente, R.PróximoDíaRecordatorio
FROM Accion A, Actividad Ac, OportunidadDeVenta O , Recordatorio R
WHERE Ac.ActividadId = A.TipoActividad AND A.Oportunidad = O.OportunidadId  AND A.AccionId IN (
select top 1 with ties
   AccionId
from Accion
order by row_number() over (partition by Oportunidad order by AccionId desc)) AND A.AccionId = R.AccionId  AND A.FechaEjecucion >= SYSDATETIME()
end