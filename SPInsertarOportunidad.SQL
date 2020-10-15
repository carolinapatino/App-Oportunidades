CREATE PROC InsertarOportunidad (@json NVARCHAR(500),@Jsonproductos NVARCHAR(500))
 as 
 begin 
  Declare @OportunidadId INT
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
    ProductoId INT '$.id'
    )
  SELECT @OportunidadId
 end
