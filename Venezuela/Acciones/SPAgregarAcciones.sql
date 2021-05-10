CREATE PROC [dbo].[AgregarAcciones] (@accionEnCurso NVARCHAR(600), @AccionId INT, @proximaAccion NVARCHAR(600))
as 
begin 
   WITH JSONAccionEnCurso as(
    SELECT
        FechaEjecucion,
		TipoActividad,
		DatoEspecifico,
		Descripcion,
		AsignadaA,
		PersonaContacto,
		RegistradaPor
        FROM OPENJSON(@accionEnCurso)
        WITH (
        FechaEjecucion DATE '$.fechaEjecucion', 
		TipoActividad INT  '$.tipoActividad',
		DatoEspecifico VARCHAR(45) '$.datoEspecifico',
		Descripcion VARCHAR (280)  '$.descripcion',
		AsignadaA INT '$.asignadaA',
		PersonaContacto VARCHAR (100) '$.personaContacto',
		RegistradaPor INT '$.registradaPor'
        ) AS jsonValues
    )
  UPDATE Accion SET
  FechaEjecucion = A.FechaEjecucion,
  TipoActividad = A.TipoActividad,
  DatoEspecifico = A.DatoEspecifico,
  Descripcion = A.Descripcion,
  AsignadaA = A.AsignadaA,
  PersonaContacto = A.PersonaContacto,
  RegistradaPor = A.RegistradaPor
  FROM JSONAccionEnCurso A
  WHERE AccionId = @AccionId ;

  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto], [RegistradaPor]) 
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
	 PersonaContacto,
	 RegistradaPor
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
	PersonaContacto VARCHAR(100) '$.personaContacto',
	RegistradaPor INT '$.registradaPor'
    ) AS jsonValues

	Declare @ProximaAccionId INT 
	SET @ProximaAccionId = (Select SCOPE_IDENTITY())
	exec CrearRecordatorio @ProximaAccionId
 end