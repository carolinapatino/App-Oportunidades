ALTER PROC [dbo].[InsertarOportunidad] (@json NVARCHAR(500),@Jsonproductos NVARCHAR(500), @accionEnCurso NVARCHAR(600), @proximaAccion NVARCHAR(600))
 as 
BEGIN
  Declare @OportunidadId INT, @AnteriorAccionEnCurso INT, @AnteriorProxAccion INT
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


	 
	  /*INSERTAR ACCIONES DE LA OPORTUNIDAD*/
	IF EXISTS( SELECT * FROM Accion  WHERE Oportunidad = @OportunidadId)
		BEGIN 
		SET @AnteriorAccionEnCurso = (SELECT TOP 1 AccionId FROM Accion WHERE Oportunidad = @OportunidadId ORDER BY AccionId DESC )
		END
	ELSE 
		BEGIN
		SET @AnteriorAccionEnCurso = null
		END

		Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.accionAnterior', @AnteriorAccionEnCurso);
		Set @accionEnCurso =  JSON_Modify (@accionEnCurso, '$.oportunidad', @OportunidadId);
	
		INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto], [RegistradaPor]) 
		SELECT FechaEjecucion,FechaMaximaEjecucion,  AccionAnterior, EsCierre, TipoActividad, DatoEspecifico, Descripcion, Oportunidad, AsignadaA, PersonaContacto, RegistradaPor
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
		PersonaContacto VARCHAR(100) '$.personaContacto',
		RegistradaPor INT '$.registradaPor'
		) AS jsonValues
		SET @AnteriorProxAccion = (Select SCOPE_IDENTITY());

	  SET @proximaAccion = JSON_Modify (@proximaAccion, '$.accionAnterior', @AnteriorProxAccion);
	  SET @proximaAccion =  JSON_Modify (@proximaAccion, '$.oportunidad', @OportunidadId);
	  INSERT INTO Accion([FechaEjecucion],[FechaMaximaEjecucion],[AccionAnterior],[EsCierre],[TipoActividad],[DatoEspecifico],[Descripcion],[Oportunidad],[AsignadaA], [PersonaContacto], [RegistradaPor]) 
	  SELECT FechaEjecucion, FechaMaximaEjecucion, AccionAnterior, EsCierre, TipoActividad, DatoEspecifico, Descripcion, Oportunidad, AsignadaA,  PersonaContacto, RegistradaPor
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
		) AS jsonValues;

	  Declare @ProximaAccionId INT 
	  SET @ProximaAccionId = (Select SCOPE_IDENTITY())
	  exec CrearRecordatorio @ProximaAccionId

	  SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre,
		A.OrigenNombre, E.NombreEstatus, C.CodigoCliente, C.NombreCliente,
		O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, STRING_AGG (P.ProductoId, ',') AS Productos
FROM	OportunidadDeVenta O 
		INNER JOIN Estatus E ON O.Estatus = E.EstatusId
		INNER JOIN Origen A ON O.Origen = A.OrigenId
		INNER JOIN ProductoOportunidad PO ON O.OportunidadId = PO.NroOportunidad
		INNER JOIN Producto P ON PO.ProductoId = P.ProductoId
		INNER JOIN Cliente C ON O.CodigoCliente = C.CodigoCliente
		
 WHERE	O.OportunidadId = @OportunidadId
	
GROUP BY PO.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
C.CodigoCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.fechaReapertura, C.NombreCliente



  COMMIT TRANSACTION 
  END TRY

  BEGIN CATCH
	ROLLBACK TRANSACTION
  END CATCH

END