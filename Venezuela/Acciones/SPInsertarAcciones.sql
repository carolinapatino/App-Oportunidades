CREATE PROC [dbo].[insertarAcciones] (@accionEnCurso NVARCHAR(500), @proximaAccion NVARCHAR(500), @OportunidadId INT)
as 
begin 
 IF EXISTS( SELECT * FROM Accion  WHERE Oportunidad = @OportunidadId)
  begin 
  Declare @AnteriorAccionEnCurso INT, @AnteriorProxAccion INT
  SET @AnteriorAccionEnCurso = (SELECT TOP 1 AccionId FROM Accion WHERE Oportunidad = @OportunidadId ORDER BY AccionId DESC )
  end
  ELSE 
  begin
  SET @AnteriorAccionEnCurso = null
  end 
  Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.accionAnterior', @AnteriorAccionEnCurso);
  Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.oportunidad', @OportunidadId);

  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto]) 
  SELECT
     FechaEjecucion,
   FechaMaximaEjecucion,
     AccionAnterior,
     EsCierre,
     TipoActividad,
     DatoEspecifico,
     Descripcion,
     Oportunidad,
     AsignadaA,
	 PersonaContacto
    FROM  OPENJSON(@accionEnCurso)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
  FechaMaximaEjecucion DATE '$.fechaEjecucion',
    AccionAnterior INT '$.accionAnterior',
    EsCierre BIT  '$.esCierre',  
    TipoActividad INT  '$.tipoActividad',
    DatoEspecifico VARCHAR(45) '$.datoEspecifico',
    Descripcion VARCHAR (280)  '$.descripcion',
    Oportunidad INT  '$.oportunidad',
    AsignadaA INT '$.asignadaA',
	PersonaContacto VARCHAR(100) '$.personaContacto'
    ) AS jsonValues
  SET @AnteriorProxAccion = (Select SCOPE_IDENTITY());

  SET @proximaAccion = JSON_Modify (@proximaAccion, '$.accionAnterior', @AnteriorProxAccion);
  SET @proximaAccion =  JSON_Modify (@proximaAccion, '$.oportunidad', @OportunidadId);
  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto]) 
  SELECT
     FechaEjecucion,
   FechaMaximaEjecucion,
     AccionAnterior,
     EsCierre,
     TipoActividad,
     DatoEspecifico,
     Descripcion,
     Oportunidad,
     AsignadaA, 
	 PersonaContacto 
    FROM  OPENJSON(@proximaAccion)
    WITH (
    FechaEjecucion DATE '$.fechaEjecucion',
  FechaMaximaEjecucion DATE '$.fechaEjecucion',
    AccionAnterior INT '$.accionAnterior',
    EsCierre BIT  '$.esCierre',  
    TipoActividad INT  '$.tipoActividad',
    DatoEspecifico VARCHAR(45) '$.datoEspecifico',
    Descripcion VARCHAR (280)  '$.descripcion',
    Oportunidad INT  '$.oportunidad',
    AsignadaA INT '$.asignadaA',
	PersonaContacto VARCHAR(100) '$.personaContacto'
    ) AS jsonValues;

  Declare @ProximaAccionId INT 
  SET @ProximaAccionId = (Select SCOPE_IDENTITY())
  exec CrearRecordatorio @ProximaAccionId

 end