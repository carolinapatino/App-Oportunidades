ALTER PROC [dbo].[InsertarOportunidad] (@json NVARCHAR(500),@Jsonproductos NVARCHAR(500), @accionEnCurso NVARCHAR(500), @proximaAccion NVARCHAR(500))
 as 
BEGIN
  Declare @OportunidadId INT
  BEGIN TRANSACTION
  BEGIN TRY
	/*INSERTAR OPORTUNIDAD*/
	  INSERT INTO OportunidadDeVenta([FechaCreacion],[Objetivo],[MontoPresupuesto],[Estatus],[CodigoCliente],[IdCreador],[IdVendedor],[Origen]) 
	  SELECT
		 FechaCreacion, Objetivo, MontoPresupuesto,Estatus,CodigoCliente,IdCreador,IdVendedor,Origen
	  FROM OPENJSON(@json)
		WITH (
		FechaCreacion DATE '$.fechaCreacion',
		Objetivo VARCHAR(280) '$.objetivo', 
		MontoPresupuesto Decimal '$.montoPresupuesto',
		Estatus INT '$.estatus',
		CodigoCliente VARCHAR(10) '$.codigoCliente',
		IdCreador INT  '$.idCreador',
		IdVendedor INT '$.idVendedor',
		Origen INT '$.origen'
		) AS jsonValues
	  Set @OportunidadId = (Select SCOPE_IDENTITY())
 
	/*INSERTAR PRODUCTOS DE LA OPORTUNIDAD*/
	  INSERT INTO ProductoOportunidad ([ProductoId],[NroOportunidad]) 
	  SELECT 
	  ProductoId, @OportunidadId
	  FROM  OPENJSON(@Jsonproductos)
	  WITH (
		ProductoId INT '$.ProductoId'
		)
	  SELECT @OportunidadId


	  /*INSERTAR ACCIONES DE LA OPORTUNIDAD*/
	IF EXISTS( SELECT * FROM Accion  WHERE Oportunidad = @OportunidadId)
		BEGIN 
		Declare @AnteriorAccionEnCurso INT, @AnteriorProxAccion INT
		SET @AnteriorAccionEnCurso = (SELECT TOP 1 AccionId FROM Accion WHERE Oportunidad = @OportunidadId ORDER BY AccionId DESC )
		END
	ELSE 
		BEGIN
		SET @AnteriorAccionEnCurso = null
		END

		Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.accionAnterior', @AnteriorAccionEnCurso);
		Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.oportunidad', @OportunidadId);

		INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto]) 
		SELECT FechaEjecucion,FechaMaximaEjecucion,  AccionAnterior, EsCierre, TipoActividad, DatoEspecifico, Descripcion, Oportunidad, AsignadaA, PersonaContacto
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
	  SELECT FechaEjecucion, FechaMaximaEjecucion, AccionAnterior, EsCierre, TipoActividad, DatoEspecifico, Descripcion, Oportunidad, AsignadaA,  PersonaContacto 
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

  COMMIT TRANSACTION 
  END TRY

  BEGIN CATCH
	ROLLBACK TRANSACTION
  END CATCH

END



