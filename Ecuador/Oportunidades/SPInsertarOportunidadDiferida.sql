CREATE PROC [dbo].[InsertarOportunidadDiferida] (@json NVARCHAR(500), @IdOportunidadDif INT)
 as 
 begin 
  Declare @OportunidadId INT;
  CREATE TABLE #Productos(
    ID INT
);
  Declare @Cont INT;
  INSERT INTO OportunidadDeVenta([FechaCreacion],[Objetivo],[MontoPresupuesto],[Estatus],[CodigoCliente],[IdCreador],[IdVendedor],[Origen]) 
  SELECT
     FechaCreacion
       ,Objetivo
     ,MontoPresupuesto
     ,Estatus
       ,CodigoCliente
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
    IdCreador INT  '$.idCreador',
  IdVendedor INT '$.idVendedor',
    Origen INT '$.origen'
    ) AS jsonValues
  Set @OportunidadId = (Select SCOPE_IDENTITY());
  INSERT INTO #Productos SELECT ProductoId FROM ProductoOportunidad WHERE NroOportunidad = @IdOportunidadDif;

  SET @Cont = (Select Count(*) From #Productos);
  WHILE @Cont > 0 
	BEGIN 
	  INSERT INTO ProductoOportunidad (ProductoId,NroOportunidad) VALUES ((SELECT TOP 1 * FROM #Productos), @OportunidadId)
	  DELETE TOP(1) FROM #Productos
	  SET @Cont = (Select Count(*) From #Productos);
	END

	SELECT @OportunidadId
 end