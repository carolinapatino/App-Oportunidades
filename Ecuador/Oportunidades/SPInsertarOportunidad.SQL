CREATE PROC [dbo].[InsertarOportunidad] (@json NVARCHAR(500),@Jsonproductos NVARCHAR(500))
 as 
 begin 
  Declare @OportunidadId INT
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
  Set @OportunidadId = (Select SCOPE_IDENTITY())

  INSERT INTO ProductoOportunidad ([ProductoId],[NroOportunidad]) 
  SELECT 
  ProductoId, @OportunidadId
  FROM  OPENJSON(@Jsonproductos)
  WITH (
    ProductoId INT '$.ProductoId'
    )
  SELECT @OportunidadId
 end