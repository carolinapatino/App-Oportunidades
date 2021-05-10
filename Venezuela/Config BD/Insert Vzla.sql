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
INSERT INTO Origen (OrigenNombre) VALUES ('Cliente nos contactó');
INSERT INTO Origen (OrigenNombre) VALUES ('Referido');
INSERT INTO Origen (OrigenNombre) VALUES ('Jornada de Cotización')

-- Rol 
INSERT INTO Rol (NombreRol) VALUES ('Coordinador Aliados');
INSERT INTO Rol (NombreRol) VALUES ('Coordinador Promoción');
INSERT INTO Rol (NombreRol) VALUES ('Coordinador Consultoria y Ventas');
INSERT INTO Rol (NombreRol) VALUES ('Promotor');
INSERT INTO Rol (NombreRol) VALUES ('Consultor');
INSERT INTO Rol (NombreRol) VALUES ('Vendedor');
INSERT INTO Rol (NombreRol) VALUES ('Aliado');
INSERT INTO Rol (NombreRol) VALUES ('Ejecutiva de Aliados');
INSERT INTO Rol (NombreRol) VALUES ('Gerente');
INSERT INTO Rol (NombreRol) VALUES ('Usuario Prueba');
INSERT INTO Rol (NombreRol) VALUES ('Asociado de Aliado')

-- Permiso 
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Administrador', 'Tiene acceso a Parámetros y a todo');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Vendedores', 'Usuario con acceso a información del equipo de Vendedores');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Consultoría', 'Usuario con acceso a información del equipo de Consultoría');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Daynka', 'Usuario con acceso a información del equipo de Aliados de la ejecutiva Daynka');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Promoción', 'Usuario con acceso a información del equipo de Promoción' );
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Milagros', 'Usuario con acceso a información del equipo de Aliados de la ejecutiva Milagros' );
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Gustavo', 'Usuario con acceso a información del equipo de Aliados de la ejecutivo Gustavo');

-- Equipo 
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Promoción', 5);
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Consultoría', 3);
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Vendedores', 2);
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Aliados-Daynka', 4);
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Aliados-Milagros', 6);
INSERT INTO Equipo (NombreEquipo, PermisoParaAcceder) VALUES ('Aliados-GUstavo', 7);

-----------------------------  USUARIOS -----------------------------------
/*Promocion*/
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (10,'Tivisay Ceballos', 'Tivisay.ceballos@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (9,'Sarai Albornoz', 'Sarai.Albornoz@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (7,'Denis Salas', 'Denis.Salas@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (133,'Carleidis Morillo', 'Carleidis.Morillo@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (131,'Gladys Becerra', 'Gladys.Becerra@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (18,'Moises Bolivar', 'Moises.Bolivar@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (8,'Hillary Rubio', 'Hillary.Rubio@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (14,'Alexander Silva', 'alexander.silva@galac.com', 2 );
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (152,'Enyerli Gonzalez', 'Enyerli.Gonzalez@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (151,'Kenny Viñoles', 'Kenny.vinoles@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (153, 'Ignacio Tinoco', 'Ignacio.Tinoco@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (156,'Josue Gil', 'josue.gil@galac.com', 4 );

INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (10,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (9,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (7,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (133,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (131,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (18,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (8,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (14,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (152,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (151,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (153,1);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (156,1);

/*Vendedores*/
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (33,'Mariana Diaz', 'Mariana.Diaz@galac.com', 46, 3 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (25,'Edison Cartes', 'Edison.cartes@galac.com',123, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (23,'Douglas Heath', 'Douglas.heath@galac.com', 46, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (29,'Erickson Mata', 'erickson.mata@galac.com',136, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (27, 'Efrain Aramacuto', 'Efrain.aramacuto@galac.com',135, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RoliD) VALUES (21,'Alexis Suarez', 'Alexis.Suarez@galac.com',145, 6);

INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (23,3);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (25,3);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (29,3);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (27,3);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (21,3);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (33,3);

/*Consultores*/
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (36, 'Carlos Montilla', 'carlos.montilla@galac.com', 5);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (190,'Manuel Calderón', 'manuel.calderon@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (193,'Ruben Valera', 'ruben.valera@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (43,'Oscar Pariche', 'oscar.pariche@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (12,'Yetson Gonzalez', 'yetson.gonzalez@galac.com', 5 );


INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (36,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (190,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (193,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (43,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (12,2);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (33,2);

INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (11, 'Francis Toro ', 'francis.toro@galac.com', 1 );

--Aliados - Daynka
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (6, 'Daynka Leal', 'daynka.leal@galac.com', 8);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (70, 'Norka Mata', 'solucionesisamat@gmail.com', 126, 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (85, 'Emil Miquilena', 'serinted@gmail.com ',119, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (66, 'Pablo Ciafre', 'pciafre@gmail.com', 70,7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (89, 'Antonio Rosales', 'systechrc@hotmail.com',127, 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (88, 'Oscar Gonzalez', 'oscargonzalez@comexservicios.com', 184, 7);

/*Oficina Rechner*/
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (69, 'Laura Perez', 'laura.perez.rechner@gmail.com',151, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (115, 'Lelia Perez', 'lelia.perez.epocave@gmail.com',151, 11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (68, 'Gerardo Perez', 'gerardo.epoca@gmail.com', 11, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (118, 'Laura Perez (Aragua)', 'laura.perez.epocave@gmail.com',11, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (139, 'Ana Ferrer', 'ana.ferro.rechner@gmail.com',151, 11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (116, 'Maria Orellana', 'malejandra.orellana.epocave@gmail.com', 151, 11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (117, 'Anderson Castro', 'anderson.castro.epocave@gmail.com',151,11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (108, 'Maria Orellana', 'malejandra.orellana.rechner@gmail.com', 11,11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (107, 'Lelia Perez', 'lelia.perez.rechner@gmail.com',11,11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (114, 'Jhonny Colmenares', 'jhonny.colmenares.rechner@gmail.com',11,11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (119, 'Jesus Diaz', 'jesus.diaz.epocave@gmail.com',151,11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (79, 'Juan Reyes', 'jcreyes520@gmail.com', 132, 11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (140, 'Ana Ferrero', 'ana.ferro.epocave@gmail.com', 11, 11);


INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (6,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (70,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (85,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (66,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (89,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (88,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (69,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (118,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (115,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (68,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (139,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (116,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (117,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (79,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (108,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (107,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (114,4);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (119,4);

--Aliados - Gustavo
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (147, 'Yoleysi Olivares', 'yoleysi.olivares@galac.com', 8);

INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (22, 'Gustavo Sevilla', 'gustavo.sevilla@galac.com', 8);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (7, 22);

INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (78, 'Aliado Merida - Operador 1', 'aliadomerida@gmail.com', 148 , 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (64, 'Eliana Gonzalez', 'gremserviciosca@gmail.com', 26, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (74, 'Invent Zulia - Operador 2', 'inventzulia.galac@gmail.com', 93,7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (86, 'Ivo Criado', 'ivocriado@gmail.com', 149, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (72, 'Wilmer Osma', 'agt.tachira@gmail.com', 164, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (94, 'Jonathan Lugo', 'jonathanlugo2@gmail.com', 174, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (75, 'CompuPower Operador 1', 'compupowerbarinas@hotmail.com', 172, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (83, 'Fernando Mota', 'mercadeo@sys-oriente.com', 142, 7);


INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (78,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (64,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (74,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (86,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (72,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (94,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (75,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (22,6);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (83,6);

--Aliados - Milagros 
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (13, 'Milagros Suarez', 'milagros.suarez@galac.com', 8 );
INSERT PermisoUsuario (Permiso, Usuario) VALUES (6, 13);

INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (82, 'Eduardo Velazquez', 'soportesolucionesconyventi@gmail.com', 96, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (90, 'CBH Consultores - Operador 1', 'cbhconsultores.ca@hotmail.com', 131, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (65, 'Jose Tineo- Operador 1', 'tirzag68@hotmail.com', 69, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (77, 'Emerson Ramos', 'emerson89@gmail.com', 158, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId) VALUES (102, 'Dario Zapata - Operador 2', 'dario593@gmail.com', 11);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (67, 'Dario Zapata - Operador 1', 'sysordaz@gmail.com', 53,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (148, 'Irvin Cedeño', 'irvincedenoyasociados@gmail.com',194,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (127, 'Gilberto Moreno', 'gilberthmoreno@gmail.com', 179,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (73, 'Gabriel Chacon (Barinas)', 'vainfogal1@gmail.com', 152,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (71, 'Gabriel Chacon (Táchira)', 'gainfogal1@gmail.com', 24,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (80, 'Antonio Zapata', 'serviciosexabyte@hotmail.com', 162,7 );


INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (82,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (90,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (65,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (77,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (102,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (67,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (148,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (127,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (13,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (73,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (71,5);
INSERT UsuarioEquipo (UsuarioId, EquipoId) VALUES (80,5);


INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, RolId) VALUES (93, 'José Quiñonez', 'aliadosucre@mq.com.ve', 139,7 );


/* Otros Usuarios */ 
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (53,'Juan Garcia del Castillo', 'juan.garcia@galac.com', 9 );
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (149,'Carolina Patiño', 'carolina.patino@galac.com', 10);
INSERT Usuario (UsuarioId, Nombre, Correo, RolId, VendedorId ) VALUES (0, 'OFICINA', 'oficina@galac.com', 6, 7 )


/*Permisos de usuario*/
INSERT PermisoUsuario (Permiso, Usuario) VALUES (1, 14);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (1, 149);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (1, 53);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (2, 33);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (3, 33);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (4, 11);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (6, 11);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (7, 11);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (4, 6);


/*Productos*/
INSERT Producto (ProductoId,NombreProducto) VALUES (3,'AXI');
INSERT Producto (ProductoId,NombreProducto) VALUES (4,'AXI-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (12,'DER');
INSERT Producto (ProductoId,NombreProducto) VALUES (13,'DER-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (18,'NOM');
INSERT Producto (ProductoId,NombreProducto) VALUES (19,'NOM-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (5,'AXP');
INSERT Producto (ProductoId,NombreProducto) VALUES (6,'AXP-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (22,'SAW');
INSERT Producto (ProductoId,NombreProducto) VALUES (23,'SAW-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (21,'RET');
INSERT Producto (ProductoId,NombreProducto) VALUES (24,'RET-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (11,'CONT');
INSERT Producto (ProductoId,NombreProducto) VALUES (14,'CONT-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (16,'IVA-PAS');
INSERT Producto (ProductoId,NombreProducto) VALUES (15,'IVA');
INSERT Producto (ProductoId,NombreProducto) VALUES (20,'OTRO');

