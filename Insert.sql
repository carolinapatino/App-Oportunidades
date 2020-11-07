INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Abierta','Existen acciones en curso');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Fallida','No se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Facturada','Se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Diferida','El cliente pospuso la venta');

INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Llamada', 1,1 );
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Visita', 3,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Email', 1,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Cotización',2,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Otra', 4,1);


INSERT INTO Origen (OrigenNombre) VALUES ('Clientes nos contactó');
INSERT INTO Origen (OrigenNombre) VALUES ('Referido');

INSERT INTO Equipo (NombreEquipo) VALUES ('Promoción');
INSERT INTO Equipo (NombreEquipo) VALUES ('Consultoría');
INSERT INTO Equipo (NombreEquipo) VALUES ('Vendedores');
INSERT INTO Equipo (NombreEquipo) VALUES ('Aliados-Daynka');
INSERT INTO Equipo (NombreEquipo) VALUES ('Aliados-Milagros');
INSERT INTO Equipo (NombreEquipo) VALUES ('Aliados-Yoleisi');

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


INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Administrador', 'Tiene acceso a Parámetros y a todo');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Promoción', 'Usuario con acceso a información del equipo de Promoción');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Vendedores', 'Usuario con acceso a información del equipo de Vendedores');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Consultoría', 'Usuario con acceso a información del equipo de Consultoría');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Daynka', 'Usuario con acceso a información del equipo de Aliados de la ejecutiva Daynka');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Milagros', 'Usuario con acceso a información del equipo de Aliados de la ejecutiva Milagros');
INSERT INTO Permiso (NombrePermiso, Descripcion) VALUES ('Encargado Aliados-Yoleisi', 'Usuario con acceso a información del equipo de Aliados de la ejecutiva Yoleisi');


/*Promocion*/
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (10,'Tivisay Ceballos', 'Tivisay.ceballos@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (9,'Sarai Albornoz', 'Sarai.Albornoz@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (7,'Denis Salas', 'Denis.Salas@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (133,'Carleidis Morillo', 'Carleidis.Morillo@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (131,'Gladys Becerra', 'Gladys.Becerra@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (18,'Moises Bolivar', 'Moises.Bolivar@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES ('Kenny Viñoles', 'Kenny.vinoles@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (8,'Hillary Rubio', 'Hillary.Rubio@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES ('Enyerli Gonzalez', 'Enyerli.Gonzalez@galac.com', 4);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol ) VALUES (14,'Alexander Silva', 'alexander.silva@galac.com', 2 );

INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (10,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (9,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (7,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (133,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (131,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (18,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (8,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (14,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (,1);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (,1);


/*Vendedores*/
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (33,'Mariana Diaz', 'Mariana.Diaz@galac.com', 46, 3 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (23,'Douglas Heath', 'Douglas.heath@galac.com', 46, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (25,'Edison Cartes', 'Edison.cartes@galac.com',123, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (29,'Erickson Mata', 'erickson.mata@galac.com',136, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (27, 'Efrain Aramacuto', 'Efrain.aramacuto@galac.com',135, 6 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (21,'Alexis Suarez', 'Alexis.Suarez@galac.com',145, 6);
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (7,'Oficina', 'oportunidadesdeventa@galac.com', 6);


INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (23,3);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (25,3);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (29,3);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (27,3);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (21,3);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (33,3);

/*Consultores*/
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (156, 'Carlos Montilla', 'carlos.montilla@galac.com', 5);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (190,'Manuel Calderón', 'manuel.calderon@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (193,'Ruben Valera', 'ruben.valera@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (43,'Oscar Pariche', 'oscar.pariche@galac.com', 5 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (12,'Yetson Gonzalez', 'yetson.gonzalez@galac.com', 5 );


INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (156,2);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (190,2);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (193,2);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (43,2);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (12,2);
INSERT Usuario-Equipo (UsuarioId, EquipoId) VALUES (33,2);

/*Aliados - Daynka*/
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (11, 'Francis Toro ', 'francis.toro@galac.com', 1 );
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (6, 'Daynka Leal', 'daynka.leal@galac.com', 8);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (70, 'Norka Mata', 'solucionesisamat@gmail.com', 126 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Genyerve Giron', 'ebreyneg@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (69, 'Laura Perez', 'laura.perez.rechner@gmail.com',151);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Lelia Perez', 'lelia.perez.rechner@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (139, 'Ana Ferrer', 'ana.ferro.rechner@gmail.com',72);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Maria Orellana', 'malejandra.orellana.rechner@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Anderson Castro', 'anderson.castro.rechner@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Jhonny Colmenares', 'jhonny.colmenares.rechner.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Jesus Diaz', 'jesus.diaz.rechner@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (68, 'Gerardo Perez', 'gerardo.epoca@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (79, 'Juan Reyes', 'jcreyes520@gmail.com', 25);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (85, 'Emil miquilena', 'serinted@gmail.com ',119);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (66, 'Pablo Ciafre', 'pciafre@gmail.com', 70 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (89, 'Ronsangela Villasmil', 'systechrc@hotmail.com',127 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (88, 'Oscar Gonzalez', 'oscargonzalez@comexservicios.com', 184);

/*Aliados - Yoleisi*/
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (147, 'Yoleysi Olivares', 'yoleysi.olivares@galac.com', 8 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (, 'Yeraldin Blankenhor', 'aliadomerida@gmail.com', , 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (64, 'Ramon Nieves', 'gremserviciosca@gmail.com', 26 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol ) VALUES (, 'Jose Porras', 'gremca2@hotmail.com',);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (, 'Charlie Velasco', 'gremserviciosca@hotmail.com', );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (83, 'Fernando Mota', 'fernando.mota@sys-oriente.com',29, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (74, 'Gerardo Farias', 'gerardofarias@gmail.com', 20, 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (, 'Cristina Pirela', 'inventzulia.galac@gmail.com');
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (86, 'Ivo Criado', 'ivocriado@gmail.com', 149, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (72, 'Wilmer Osma', 'agt.tachira@gmail.com', 164, 7);
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId) VALUES (94, 'Jonathan Lugo', 'jonathanlugo2@gmail.com', 174, 7 );

/*Aliados - Milagros */
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (13, 'Milagros Suarez', 'milagros.suarez@galac.com', 8 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (, 'Eduardo Velasquez', 'velazquez.movil@gmail.com',   );
INSERT Usuario (UsuarioId, Nombre, Correo, Rol) VALUES (102, 'Dario Zapata', 'dario593@gmail.com', 7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (62, 'Dario Zapata', 'sysordaz@gmail.com', 12,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (148, 'Irvin Cedeño', 'irvincedenoyasociados@gmail.com', 88,7 );
INSERT Usuario (UsuarioId, Nombre, Correo, VendedorId, Rol) VALUES (127, 'Gilberto Moreno', 'gilberthmoreno@gmail.com', 65,7 );



/* Otros Usuarios */ 
INSERT Usuario (UsuarioId, Nombre, Correo, RolId ) VALUES (149,'Carolina Patiño', 'carolina.patino@galac.com', 10);


INSERT PermisoUsuario (Permiso, Usuario) VALUES (1, 149);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (2, 98);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (3, 98);
INSERT PermisoUsuario (Permiso, Usuario) VALUES (4, 98);


