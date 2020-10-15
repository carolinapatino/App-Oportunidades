CREATE TABLE Estatus(
    EstatusId INT NOT NULL IDENTITY PRIMARY KEY,
    NombreEstatus VARCHAR (50) NOT NULL, 
    Descripcion VARCHAR (38),
);

CREATE TABLE Parametro(
    ParametroId INT NOT NULL IDENTITY PRIMARY KEY,
    PrimerHorario TIME NOT NULL,
    SegundoHorario TIME
);

CREATE TABLE Permiso(
    PermisoId INT NOT NULL IDENTITY PRIMARY KEY,
    NombrePermiso VARCHAR(50) NOT NULL,
    Descripcion VARCHAR(100)
);

CREATE TABLE Recordatorio(
    RecordatorioId INT NOT NULL IDENTITY PRIMARY KEY,
    FechaInicioRecordatorio DATE NOT NULL,
    PróximoDíaRecordatorio DATE, 
    AccionId INT NOT NULL,
    CONSTRAINT FK_Recordatorio_Accion_AccionId FOREIGN KEY (AccionId) REFERENCES Accion (AccionId)
);

CREATE TABLE PermisoUsuario (
    PermisoUsuarioId INT NOT NULL IDENTITY PRIMARY KEY, 
    Permiso INT NOT NULL, 
    Usuario INT NOT NULL,
    CONSTRAINT FK_PermisoUsuario_Permiso_PermisoId FOREIGN KEY (Permiso) REFERENCES Permiso (PermisoId)
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


CREATE TABLE OportunidadDeVenta(
    OportunidadId INT NOT NULL IDENTITY PRIMARY KEY,
    FechaCreacion DATE NOT NULL,
    Objetivo VARCHAR(280) NOT NULL,
    ObservacionDeCierre VARCHAR(280), 
    FechaCierre DATE, 
    MontoPresupuesto DECIMAL NOT NULL,
    Estatus INT NOT NULL,
    CodigoCliente VARCHAR(10) NOT NULL,
    NombreCliente VARCHAR(200) NOT NULL,
    IdCreador INT NOT NULL,
    IdVendedor INT,
    Origen INT NOT NULL,
    CONSTRAINT FK_OportunidadDeVenta_Estatus_EstatusId FOREIGN KEY (Estatus) REFERENCES Estatus (EstatusId),
    CONSTRAINT FK_OportunidadDeVenta_Origen_OrigenId FOREIGN KEY (Origen) REFERENCES Origen (OrigenId)
);

CREATE TABLE ProductoOportunidad(
    ProductoOportunidadId INT NOT NULL IDENTITY PRIMARY KEY,
    NroOportunidad INT NOT NULL,
    ProductoId INT NOT NULL, 
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
    AsignadaA INT NOT NULL
    CONSTRAINT FK_Accion_Accion_AccionId FOREIGN KEY (AccionAnterior) REFERENCES Accion (AccionId),
    CONSTRAINT FK_Accion_Actividad_ActividadId FOREIGN KEY (TipoActividad) REFERENCES Actividad (ActividadId) ,
    CONSTRAINT FK_Accion_Oportunidad_OportunidadId FOREIGN KEY (Oportunidad) REFERENCES OportunidadDeVenta (OportunidadId) 
);



