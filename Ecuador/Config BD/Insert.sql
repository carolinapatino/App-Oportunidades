-- Estatus 
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Abierta','Existen acciones en curso');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Fallida','No se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Facturada','Se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Diferida','El cliente pospuso la venta');

-- Actividad
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Llamada', 1,1 );
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Visita', 3,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Email', 1,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Cotización',2,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Otra', 4,1);

-- Origen
INSERT INTO Origen (OrigenNombre) VALUES ('Clientes nos contactó');
INSERT INTO Origen (OrigenNombre) VALUES ('Referido');
INSERT INTO Origen (OrigenNombre) VALUES ('Jornada de Cotización')


--Actividad 
INSERT INTO Actividad (NombreActividad, FrecuenciaRecordatorio, DíasAntesRecordatorío) VALUES ('Llamada', 4, 2);
INSERT INTO Actividad (NombreActividad, FrecuenciaRecordatorio, DíasAntesRecordatorio) VALUES ('Visita', 3, 1);
INSERT INTO Actividad (NombreActividad, FrecuenciaRecordatorio, DíasAntesRecordatorio) VALUES ('Email', 1, 1);
INSERT INTO Actividad (NombreActividad, FrecuenciaRecordatorio, DíasAntesRecordatorio) VALUES ('Cotizacion', 1, 1);
INSERT INTO Actividad (NombreActividad, FrecuenciaRecordatorio, DíasAntesRecordatorio) VALUES ('Otra', 1, 1);

--Productos
INSERT INTO Producto (NombreProducto) VALUES ('Administrativo');
INSERT INTO Producto (NombreProducto) VALUES ('Administrativo-PAS');
INSERT INTO Producto (NombreProducto) VALUES ('Nómina');
INSERT INTO Producto (NombreProducto) VALUES ('Nómina-PAS');
INSERT INTO Producto (NombreProducto) VALUES ('Iva y Renta');
INSERT INTO Producto (NombreProducto) VALUES ('Iva y Renta -PAS');
INSERT INTO Producto (NombreProducto) VALUES ('Galac Cloud');


--Rol 
INSERT INTO Rol (NombreRol) VALUES ('Ventas');
INSERT INTO Rol (NombreRol) VALUES ('Soporte');
INSERT INTO Rol (NombreRol) VALUES ('Gerente');

-- Usuarios
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Liliana Hernandez','liliana.hernandez@galac.com',1,'lil*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Nancy Castillo','nancy.castillo@galac.com',1,'nan*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Henry Anrrango','henry.anrrango@galac.com',2,'hen*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Mayra Lojan','mayra.lojan@galac.com',2,'may*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Vicente Tinoco','vicente.tinoco@galac.com',3,'vic*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Juan García','juan.garcia@galac.com',3,'jua*123');
INSERT INTO USUARIO([NOMBRE],[CORREO],[ROLID],[CONTRASEÑA]) VALUES('Carolina Patiño','carolina.patino@galac.com',3,'car*123');


---- Equipo 

INSERT INTO Equipo (NombreEquipo) VALUES ('Ventas');
INSERT INTO Equipo (NombreEquipo) VALUES ('Soporte');


---- Usuario-Equipo 

INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (1,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (2,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (3,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (4,2);
