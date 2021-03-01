CREATE TABLE Estatus(
    EstatusId INT NOT NULL IDENTITY PRIMARY KEY,
    NombreEstatus VARCHAR (50) NOT NULL, 
    Descripcion VARCHAR (38),
);

CREATE TABLE Actividad(
    ActividadId INT NOT NULL IDENTITY PRIMARY KEY,
    NombreActividad VARCHAR(50)  NOT NULL, 
    FrecuenciaRecordatorio INT NOT NULL,
    DíasAntesRecordatorio INT NOT NULL,
);


CREATE TABLE Origen(
    OrigenId INT NOT NULL IDENTITY PRIMARY KEY,
    OrigenNombre VARCHAR(50) NOT NULL,
);

CREATE TABLE Rol (
    RolId INT NOT NULL IDENTITY PRIMARY KEY, 
    NombreRol VARCHAR(100) NOT NULL
); 

CREATE TABLE Usuario (
    UsuarioId INT NOT NULL IDENTITY PRIMARY KEY, 
    Nombre VARCHAR(100) NOT NULL, 
    Correo VARCHAR(100) NOT NULL UNIQUE,
    RolId INT NOT NULL,
    Contraseña VARCHAR(10) NOT NULL
    CONSTRAINT FK_UsuarioRol_Rol_Id FOREIGN KEY (RolId) REFERENCES Rol (RolId) 
);

CREATE TABLE Cliente(
    ClienteId INT NOT NULL IDENTITY PRIMARY KEY,
    CodigoCliente INT DEFAULT NEXT VALUE FOR SequenceCliente UNIQUE,
    RUC VARCHAR (15) NOT NULL,
    NombreCliente VARCHAR (200) NOT NULL,
    Telefono VARCHAR (40),
    Correo VARCHAR (100),
    PersonaContacto VARCHAR (100), 
    VendedorAsociado INT,

    CONSTRAINT FK_Cliente_VendedorAsociado_UsuarioId FOREIGN KEY (VendedorAsociado) REFERENCES Usuario(UsuarioId)
);

CREATE TABLE OportunidadDeVenta(
    OportunidadId INT NOT NULL IDENTITY PRIMARY KEY,
    FechaCreacion DATE NOT NULL,
    Objetivo VARCHAR(280) NOT NULL,
    ObservacionDeCierre VARCHAR(280), 
    FechaCierre DATE, 
    MontoPresupuesto DECIMAL NOT NULL,
    Estatus INT NOT NULL,
    IdCreador INT NOT NULL,
    IdVendedor INT,
    Origen INT NOT NULL,
    IdUsuarioCerrador  INT, 
    FechaReapertura DATE,
    CodigoCliente INT NOT NULL
    CONSTRAINT FK_OportunidadDeVenta_Estatus_EstatusId FOREIGN KEY (Estatus) REFERENCES Estatus (EstatusId),
    CONSTRAINT FK_OportunidadDeVenta_Origen_OrigenId FOREIGN KEY (Origen) REFERENCES Origen (OrigenId),
    CONSTRAINT FK_OportunidadDeVenta_CodigoCliente_CodigoCliente FOREIGN KEY (CodigoCliente) REFERENCES Cliente (CodigoCliente),
    CONSTRAINT FK_OportunidadDeVenta_IdCreador_UsuarioId FOREIGN KEY (IdCreador) REFERENCES Usuario(UsuarioId),
    CONSTRAINT FK_OportunidadDeVenta_IdVendedor_UsuarioId FOREIGN KEY (IdVendedor) REFERENCES Usuario(UsuarioId),
    CONSTRAINT FK_OportunidadDeVenta_IdUsuarioCerrador_UsuarioId FOREIGN KEY (IdUsuarioCerrador) REFERENCES Usuario(UsuarioId)
);

CREATE TABLE Producto (
    ProductoId INT  NOT NULL IDENTITY  PRIMARY KEY, 
    NombreProducto VARCHAR(50) NOT NULL
);

CREATE TABLE ProductoOportunidad(
    ProductoOportunidadId INT NOT NULL IDENTITY PRIMARY KEY,
    NroOportunidad INT NOT NULL,
    ProductoId INT NOT NULL, 
    CONSTRAINT FK_ProductoOportunidad_Producto_ProductoId FOREIGN KEY (ProductoId) REFERENCES Producto(ProductoId),
    CONSTRAINT FK_ProductoOportunidad_Oportunidad_OportunidadId FOREIGN KEY (NroOportunidad) REFERENCES OportunidadDeVenta (OportunidadId)
);



CREATE TABLE Accion(
    AccionId INT NOT NULL IDENTITY PRIMARY KEY,
    FechaEjecucion DATE NOT NULL,
    FechaMaximaEjecucion DATE,
    AccionAnterior INT,
    EsCierre BIT DEFAULT 0 NOT NULL,  
    TipoActividad INT NOT NULL,
    DatoEspecifico VARCHAR(45) ,
    Descripcion VARCHAR (280),
    Oportunidad INT NOT NULL,
    AsignadaA INT NOT NULL, 
    PersonaContacto VARCHAR (100),
    RegistradaPor INT NOT NULL
    CONSTRAINT FK_Accion_Accion_AccionId FOREIGN KEY (AccionAnterior) REFERENCES Accion (AccionId),
    CONSTRAINT FK_Accion_Actividad_ActividadId FOREIGN KEY (TipoActividad) REFERENCES Actividad (ActividadId) ,
    CONSTRAINT FK_Accion_Oportunidad_OportunidadId FOREIGN KEY (Oportunidad) REFERENCES OportunidadDeVenta (OportunidadId),
    CONSTRAINT FK_Accion_AsignadaA_UsuarioId FOREIGN KEY (AsignadaA) REFERENCES Usuario (UsuarioId),
    CONSTRAINT FK_Accion_RegistradaPor_UsuarioId FOREIGN KEY (RegistradaPor) REFERENCES Usuario (UsuarioId)
);

CREATE TABLE Recordatorio(
    RecordatorioId INT NOT NULL IDENTITY PRIMARY KEY,
    FechaInicioRecordatorio DATE NOT NULL,
    PróximoDíaRecordatorio DATE, 
    AccionId INT NOT NULL,
    CONSTRAINT FK_Recordatorio_Accion_AccionId FOREIGN KEY (AccionId) REFERENCES Accion (AccionId)
);




CREATE TABLE Permiso(
    PermisoId INT NOT NULL IDENTITY PRIMARY KEY,
    NombrePermiso VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(100),
);

CREATE TABLE PermisoUsuario (
    PermisoUsuarioId INT NOT NULL IDENTITY PRIMARY KEY, 
    Permiso INT NOT NULL, 
    Usuario INT NOT NULL,
    CONSTRAINT FK_PermisoUsuario_Permiso_PermisoId FOREIGN KEY (Permiso) REFERENCES Permiso (PermisoId), 
    CONSTRAINT FK_PermisoUsuario_Permiso_UsuarioId FOREIGN KEY (Usuario) REFERENCES Usuario (UsuarioId)
    );

CREATE TABLE Equipo (
    EquipoId INT NOT NULL IDENTITY PRIMARY KEY, 
    NombreEquipo VARCHAR(100) NOT NULL
);

CREATE TABLE UsuarioEquipo (
    Id INT NOT NULL IDENTITY PRIMARY KEY, 
    UsuarioId INT NOT NULL, 
    EquipoId INT NOT NULL,
    CONSTRAINT FK_UsuarioEquipo_Usuario_Id FOREIGN KEY (UsuarioId) REFERENCES Usuario (UsuarioId) ,
    CONSTRAINT FK_UsuarioEquipo_Equipo_Id FOREIGN KEY (EquipoId) REFERENCES Equipo (EquipoId) 
);








