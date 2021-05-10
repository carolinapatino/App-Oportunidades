CREATE PROC [dbo].[InsertarOportunidad] (@json NVARCHAR(500),@Jsonproductos NVARCHAR(500), @accionEnCurso NVARCHAR(600), @proximaAccion NVARCHAR(600))
 as 
 begin 
  Declare @OportunidadId INT,@AnteriorAccionEnCurso INT, @AnteriorProxAccion INT
  BEGIN TRANSACTION
  BEGIN TRY
  
  INSERT INTO OportunidadDeVenta([FechaCreacion],[Objetivo],[MontoPresupuesto],[Estatus],[CodigoCliente],[NombreCliente],[IdCreador],[IdVendedor],[Origen]) 
  SELECT
     FechaCreacion
       ,Objetivo
     ,MontoPresupuesto
     ,Estatus
       ,CodigoCliente
	   ,NombreCliente
       ,IdCreador
       ,IdVendedor
     ,Origen
    FROM OPENJSON(@json)
    WITH (
    FechaCreacion DATE '$.fechaCreacion',
    Objetivo VARCHAR(280) '$.objetivo', 
    MontoPresupuesto Decimal '$.montoPresupuesto',
    Estatus INT '$.estatus',
    CodigoCliente VARCHAR(10) '$.codigoCliente',
	NombreCliente VARCHAR(60) '$.nombreCliente',
    IdCreador INT  '$.idCreador',
	IdVendedor INT '$.idVendedor',
    Origen INT '$.origen'
    ) AS jsonValues
  Set @OportunidadId = (Select SCOPE_IDENTITY())

  INSERT INTO ProductoOportunidad ([ProductoId],[NroOportunidad]) 
  SELECT 
  ProductoId, @OportunidadId
  FROM  OPENJSON(@Jsonproductos)
  WITH (
    ProductoId INT '$.ProductoId'
    )
  
  IF EXISTS( SELECT * FROM Accion  WHERE Oportunidad = @OportunidadId)
  begin 
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

  SELECT O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
 O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, STRING_AGG (P.ProductoId, ',') AS Productos, O.idUsuarioCerrador, O.FechaReapertura
FROM OportunidadDeVenta O, 
		Estatus E, 
		Origen A, 
		ProductoOportunidad P, 
		Producto Pr
 WHERE  E.EstatusId = O.Estatus 
		AND O.Origen = A.OrigenId 
		AND P.NroOportunidad = O.OportunidadId 
		AND Pr.ProductoId = P.ProductoId 
		AND O.OportunidadId = @OportunidadId
GROUP BY P.NroOportunidad, O.OportunidadId, O.FechaCreacion, O.FechaCierre, O.MontoPresupuesto, O.Objetivo, O.ObservacionDeCierre, A.OrigenNombre, E.NombreEstatus,
O.CodigoCliente,O.NombreCliente, O.IdCreador, O.IdVendedor, O.idUsuarioCerrador, O.FechaReapertura

  COMMIT TRANSACTION
  END TRY 

  BEGIN CATCH
  ROLLBACK TRANSACTION
  END CATCH

 end