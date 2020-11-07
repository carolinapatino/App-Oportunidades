
CREATE PROC [dbo].[EditarOportunidad] (@jsonOportunidad NVARCHAR(max), @OportunidadId INT, @jsonAccionEnCurso NVARCHAR(max),  @jsonProximaAccion NVARCHAR(max), @jsonProductos NVARCHAR(max))
 as 
  begin 

 /*Modifica la oportunidad de venta */
  WITH JSONOportunidad as(
    SELECT
          Objetivo
         ,IdVendedor
         ,Origen
        FROM OPENJSON(@jsonOportunidad)
        WITH (
        Objetivo VARCHAR(280) '$.objetivo', 
        IdVendedor INT '$.idVendedor',
        Origen INT '$.origen'
        ) AS jsonValues
    )
  UPDATE OportunidadDeVenta SET
  Objetivo = op.Objetivo,
  IdVendedor= op.IdVendedor,
  Origen = op.Origen
  FROM JSONOportunidad op
  WHERE OportunidadId = @OportunidadId ;


  /*Modifica los productos de la oportunidad */
  DELETE ProductoOportunidad Where NroOportunidad = @OportunidadId
  INSERT INTO ProductoOportunidad ([ProductoId],[NroOportunidad]) 
  SELECT 
  ProductoId, @OportunidadId
  FROM  OPENJSON(@jsonProductos)
  WITH (
    ProductoId INT '$.id'
    )

/* Actualiza la acción en curso */
  Declare @UltimaAccion INT ;
  SET @UltimaAccion = (SELECT TOP 1 AccionId FROM Accion WHERE Oportunidad = @OportunidadId ORDER BY AccionId DESC);
  WITH JSONAccionEnCurso as(
    SELECT
     FechaEjecucion,
     TipoActividad,
     DatoEspecifico,
     Descripcion,
     AsignadaA
    FROM OPENJSON(@jsonAccionEnCurso)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
    TipoActividad INT  '$.tipoActividad',
    DatoEspecifico VARCHAR(45) '$.datoEspecifico',
    Descripcion VARCHAR (280)  '$.descripcion',
    AsignadaA INT '$.asignadaA'
    ) 
        )
  UPDATE Accion SET
   FechaEjecucion = ac.FechaEjecucion,
     TipoActividad = ac.TipoActividad,
     DatoEspecifico = ac.DatoEspecifico,
     Descripcion = ac.Descripcion,
     AsignadaA = ac.AsignadaA 
  FROM JSONAccionEnCurso AC
  WHERE AccionId = (@UltimaAccion - 1);


  /*Actualiza la próxima acción*/
  WITH JSONProximaAccion as(
    SELECT
     FechaEjecucion,
     TipoActividad,
     DatoEspecifico,
     Descripcion,
     AsignadaA
    FROM OPENJSON(@jsonProximaAccion)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
    TipoActividad INT  '$.tipoActividad',
    DatoEspecifico VARCHAR(45) '$.datoEspecifico',
    Descripcion VARCHAR (280)  '$.descripcion',
    AsignadaA INT '$.asignadaA'
    ) 
        )
  UPDATE Accion SET
   FechaEjecucion = pa.FechaEjecucion,
     TipoActividad = pa.TipoActividad,
     DatoEspecifico = pa.DatoEspecifico,
     Descripcion = pa.Descripcion,
     AsignadaA = pa.AsignadaA 
  FROM JSONProximaAccion PA
  WHERE AccionId = @UltimaAccion


exec CrearRecordatorio @UltimaAccion
 end


 