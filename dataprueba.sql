------ #01
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,NombreCliente, IdCreador, IdVendedor,Origen)
VALUES ('2020-09-01','data Prueba creador por un promotor',0,1,'45523','HENRRY JOEL DIAZ PRUEBA',10,123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (1,22);

--1
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',null,0,1,'213123212','acción asignada a un vendedor',1,25);

--2
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',1,0,4,'213123212','acción asignada a un vendedor',1,25);


--3
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',2,0,2,'213123212','acción asignada a un vendedor',1,25);

--4
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-04',3,0,3,'213123212','acción asignada a un vendedor',1,25);



------ #02 
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-01','data Prueba creador por un promotor',0,1,'18476',9,'LATINOAMERICANA DE INGENIERIA Y PROYECTOS,C.A.',135,2);
INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (2,3);

--5
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',null,0,1,'213123212','acción asignada a un vendedor',2,27);
 
--6
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',5,0,4,'213123212','acción asignada a un vendedor',2,27);

--7
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',6,0,2,'213123212','acción asignada a un vendedor',2,27);

--8
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-04',7,0,3,'213123212','acción asignada a un vendedor',2,27);



------ #03 
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-01','data Prueba creador por un promotor',0,1,'21510',7,'LAURA CAROLINA CASTELLANOS CRUZ',127,2);
INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (3,15);

--9
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',null,0,1,'213123212','acción asignada a un aliado  ',3,89);

--10
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',9,0,4,'213123212','acción asignada a un aliado',3,89);

--11
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',10,0,2,'213123212','acción asignada a un aliado',3,89);

--12
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-04',11,0,3,'213123212','acción asignada a un aliado',3,89);


------------ #04
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-01','data Prueba creador por un promotor',0,1,'25637',156,'LAURIBEL OTERO AMARAL',136,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (4,22);

--13
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',null,0,1,'213123212','acción asignada a un aliado ',4,64);

--14
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-01',13,0,4,'213123212','acción asignada a un aliado ',4,64);

--15
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',14,0,2,'213123212','acción asignada a un aliado',4,64);

--16
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-04',15,0,3,'213123212','acción asignada a un aliado',4,64);


------------ #05
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-02','data Prueba creador por un promotor',0,1,'20367',190,'Laura Alicia Chebi Linares',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (5,3);

--17
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-02',null,0,1,'213123212','acción asignada a un vendedor ',5, 25);

--18
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',17,0,4,'213123212','acción asignada a un vendedor',5,25);

--19
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-05',18,0,2,'213123212','acción asignada a un vendedor',5,25);

--20
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',19,0,3,'213123212','acción asignada a un vendedor',5,25);



------------ #06
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-02','data Prueba creador por un promotor',0,1,'17790',27,'LAURA DA PAZ CORREIA DO ROSARIO',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (6,15);

--21
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-02',null,0,1,'213123212','acción asignada a un vendedor ',6, 27);

--22
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',21,0,4,'213123212','acción asignada a un vendedor',6, 27);

--23
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-05',22,0,2,'213123212','acción asignada a un vendedor',6, 27);

--24
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',23,0,3,'213123212','acción asignada a un vendedor',6, 27);


------ #07
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-02','data Prueba creador por un promotor',0,1,'26389',131,'LAUNDRY OF TRUCKS EL GAVILAN C.A.',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (7,22);

--25
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-02',null,0,1,'213123212','acción asignada a un aliado  ',7,89);

--26
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',25,0,4,'213123212','acción asignada a un aliado',7,89);

--27
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-05',26,0,2,'213123212','acción asignada a un aliado',7,89);

--28
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',27,0,3,'213123212','acción asignada a un aliado',7,89);


------------ #08
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-02','data Prueba creador por un promotor',0,1,'24481',133,'ASOCIACION VENEZOLANA DE TURISMO PARA LA SALUD',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (8,3);

--29
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-02',null,0,1,'213123212','acción asignada a un aliado ',8,64);

--30
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-03',29,0,4,'213123212','acción asignada a un aliado ',8,64);

--31
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-05',30,0,2,'213123212','acción asignada a un aliado',8,64);

--32
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',31,0,3,'213123212','acción asignada a un aliado',8,64);



------------ #09
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-06','data Prueba creador por un promotor',0,1,'21217',133,'LATONERIA Y PINTURA APACHE C.A',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (9,15);

--33
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',null,0,1,'213123212','acción asignada a un vendedor',9,25);

--34
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',33,0,4,'213123212','acción asignada a un vendedor',9,25);

--35
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',34,0,2,'213123212','acción asignada a un vendedor',9,25);

--36
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-09',35,0,3,'213123212','acción asignada a un vendedor',9,25);



--------- #10
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-06','data Prueba creador por un promotor',0,1,'22704',43,'ANA LUISA NARANJO MEJIAS',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (10,22);

--37
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',null,0,1,'213123212','acción asignada a un vendedor',10, 27);

--38
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',37,0,4,'213123212','acción asignada a un vendedor',10, 27);

--39
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',38,0,2,'213123212','acción asignada a un vendedor',10, 27);

--40
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-09',39,0,3,'213123212','acción asignada a un vendedor',10, 27);



--------- #11
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-06','data Prueba creador por un promotor',0,1,'21381',8,'ANA LUISA GONZALEZ DELGADO',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (11,3);

--41
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',null,0,1,'213123212','acción asignada a un aliado', 11, 89);

--42
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',41,0,4,'213123212','acción asignada a un aliado', 11, 89);

--43
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',42,0,2,'213123212','acción asignada a un aliado', 11, 89);

--44
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-09',43,0,3,'213123212','acción asignada a un aliado', 11, 89);




--------- #12
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-06','data Prueba creador por un promotor',0,1,'05022',14,'ASOCIACION DE IND.DE PANADERIAS',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (12,15);

--45
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',null,0,1,'213123212','acción asignada a un aliado', 12, 64);

--46
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-06',45,0,4,'213123212','acción asignada a un aliado', 12, 64);

--47
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',46,0,2,'213123212','acción asignada a un aliado', 12, 64);

--48
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-09',47,0,3,'213123212','acción asignada a un aliado', 12, 64);


--------- #13
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-07','data Prueba creador por un promotor',0,1,'80244',53,'AMERICAN ASSIST VENEZUELA, S.A',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (13,18);

--49
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-07',null,0,1,'213123212','acción asignada a un vendedor', 13,25);

--50
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',49,0,4,'213123212','acción asignada a un vendedor', 13, 25);

--51
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-10',50,0,2,'213123212','acción asignada a un vendedor', 13, 25);

--52
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',51,0,3,'213123212','acción asignada a un vendedor', 13, 25);


--------- #14
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-07','data Prueba creador por un promotor',0,1,'25799',53,'BLAKSTONE CONSULTING AND HOLDINGS, S.A',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (14,22);

--50
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-07',null,0,1,'213123212','acción asignada a un vendedor', 14, 27);

--51
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',50,0,4,'213123212','acción asignada a un vendedor', 14, 27);

--52
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-10',51,0,2,'213123212','acción asignada a un vendedor', 14, 27);

--53
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',52,0,3,'213123212','acción asignada a un vendedor', 14, 27);


--------- #15
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-07','data Prueba creador por un promotor',0,1,'82968',53,'LABORATORIO MEDICO SAN JUAN C.A.',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (15,3);

--54
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-07',null,0,1,'213123212','acción asignada a un aliado', 15, 89);

--55
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',54,0,4,'213123212','acción asignada a un aliado', 15, 89);

--56
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-10',55,0,2,'213123212','acción asignada a un aliado', 15, 89);

--57
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',56,0,3,'213123212','acción asignada a un aliado', 15, 89);


--------- #16
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-07','data Prueba creador por un promotor',0,1,'18692',53,'ANA LUISA MALAVÉ RODRÍGUEZ',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (16,15);

--58
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-07',null,0,1,'213123212','acción asignada a un aliado', 16, 64);

--59
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-08',58,0,4,'213123212','acción asignada a un aliado', 16, 64);

--60
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-10',59,0,2,'213123212','acción asignada a un aliado', 16, 64);

--61
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',60,0,3,'213123212','acción asignada a un aliado', 16, 64);



--------- #17
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-11','data Prueba creador por un promotor',0,3,'38172',149,'ASOCIACION VENEZOLANA DE LA COMUNIDAD FOTOGRAFICA Y AFINES',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (17,18);

--62
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',null,0,1,'213123212','acción asignada a un vendedor', 17, 25);

--63
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',62,0,4,'213123212','acción asignada a un vendedor', 17, 25);

--64
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',64,0,2,'213123212','acción asignada a un vendedor', 17, 25);

--65
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-14',65,0,3,'213123212','acción asignada a un vendedor', 17, 25);



--------- #18

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-11','data Prueba creador por un promotor',0,3,'18811',27,'AIRE CONFORT INDISTRIAL 89705, CA.',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (18,22);

--66
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',null,0,1,'213123212','acción asignada a un vendedor', 18, 27);

--67
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',66,0,4,'213123212','acción asignada a un vendedor', 18, 27);

--68
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',67,0,2,'213123212','acción asignada a un vendedor', 18, 27);

--69
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-14',68,0,3,'213123212','acción asignada a un vendedor', 18, 27);



--------- #19

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-11','data Prueba creador por un promotor',0,3,'32508',149,'CENTRO MEDICO SAN JUAN CA',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (19,3);

--70
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',null,0,1,'213123212','acción asignada a un aliado', 19,89);

--71
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',70,0,4,'213123212','acción asignada a un aliado', 19,89);

--72
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',71,0,2,'213123212','acción asignada a un aliado', 19,89);

--73
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-14',72,0,3,'213123212','acción asignada a un aliado', 19,89);



--------- #20

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-11','data Prueba creador por un promotor',0,3,'66474',149,'ASOCIACION COOPERATIVA SERVICIOS JC RL',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (20,15);

--74
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',null,0,1,'213123212','acción asignada a un aliado', 20,64);

--75
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-11',74,0,4,'213123212','acción asignada a un aliado', 20,64);

--76
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',75,0,2,'213123212','acción asignada a un aliado', 20,64);

--77
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-14',76,0,3,'213123212','acción asignada a un aliado', 20,64);




--------- #21

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-12','data Prueba creador por un promotor',0,3,'67400',53,'ASOCIACION VENEZOLANA DE CRIADORES DE GANADO CEBU',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (21,18);

--78
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-12',null,0,1,'213123212','acción asignada a un vendedor', 21,25);

--79
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',78,0,4,'213123212','acción asignada a un vendedor', 21,25);

--80
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-15',79,0,2,'213123212','acción asignada a un vendedor', 21,25);

--81
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',80,0,3,'213123212','acción asignada a un vendedor', 21,25);



--------- #22

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-12','data Prueba creador por un promotor',0,3,'22819',53,'LE GRAND GOURMET, C.A.',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (22,22);

--82
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-12',null,0,1,'213123212','acción asignada a un vendedor', 22,27);

--83
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',82,0,4,'213123212','acción asignada a un vendedor', 22,27);

--84
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-15',83,0,2,'213123212','acción asignada a un vendedor', 22,27);

--85
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',84,0,3,'213123212','acción asignada a un vendedor', 22,27);



--------- #23

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-12','data Prueba creador por un promotor',0,3,'24160',53,'AVES JHS 2013, C.A',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (23,3);

--86
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-12',null,0,1,'213123212','acción asignada a un aliado', 23,89);

--87
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',86,0,4,'213123212','acción asignada a un aliado', 23,89);

--88
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-15',87,0,2,'213123212','acción asignada a un aliado', 23,89);

--89
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',88,0,3,'213123212','acción asignada a un aliado', 23,89);


--------- #24

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-12','data Prueba creador por un promotor',0,3,'20752',53,'CIBERART PUBLICIDAD Y MERCADEO COMPAÑIA ANONIMA CIBERART  CA',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (24,15);

--90
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-12',null,0,1,'213123212','acción asignada a un aliado', 24,64);

--91
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-13',90,0,4,'213123212','acción asignada a un aliado', 24,64);

--92
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-15',91,0,2,'213123212','acción asignada a un aliado', 24,64);

--93
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',92,0,3,'213123212','acción asignada a un aliado', 24,64);


--------- #25

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-16','data Prueba creador por un promotor',0,3,'14141',149,'ASOCIACION CRISTIANA DE JOVENES YMCA DE CARACAS',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (25,18);

--94
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',null,0,1,'213123212','acción asignada a un vendedor', 25,25);

--95
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',94,0,4,'213123212','acción asignada a un vendedor', 25,25);

--96
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',96,0,2,'213123212','acción asignada a un vendedor', 25,25);

--97
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-19',97,0,3,'213123212','acción asignada a un vendedor', 25,25);


--- #26

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-16','data Prueba creador por un promotor',0,3,'25699',149,'LCH ASEOSRIA Y GERENCIA C.A',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (26,22);

--98
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',null,0,1,'213123212','acción asignada a un vendedor', 26,27);

--99
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',98,0,4,'213123212','acción asignada a un vendedor', 26,27);

--100
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',99,0,2,'213123212','acción asignada a un vendedor', 26,27);

--101
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-19',100,0,3,'213123212','acción asignada a un vendedor', 26,27);


--- #27

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-16','data Prueba creador por un promotor',0,3,'26389',149,'LAUNDRY OF TRUCKS EL GAVILAN C.A.',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (27,3);

--102
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',null,0,1,'213123212','acción asignada a un vendedor', 27,89);

--103
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',102,0,4,'213123212','acción asignada a un vendedor', 27,89);

--104
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',103,0,2,'213123212','acción asignada a un vendedor', 27,89);

--105
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-19',104,0,3,'213123212','acción asignada a un vendedor', 27,89);


----- #28

INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-16','data Prueba creador por un promotor',0,3,'22885',149,'DISTRIBUIDORA DE LUBRICANTES JOSE JUAN, C.A',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (28,15);

--106
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',null,0,1,'213123212','acción asignada a un vendedor', 28,64);

--107
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-16',106,0,4,'213123212','acción asignada a un vendedor', 28,64);

--108
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',107,0,2,'213123212','acción asignada a un vendedor', 28,64);

--109
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-19',108,0,3,'213123212','acción asignada a un vendedor', 28,64);



----- #29
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-17','data Prueba creador por un promotor',0,3,'11316',53,'ALVARO VARGAS MEDINA',123,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (29,18);

--110
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-17',null,0,1,'213123212','acción asignada a un vendedor', 29,25);

--111
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',110,0,4,'213123212','acción asignada a un vendedor', 29,25);

--112
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-20',111,0,2,'213123212','acción asignada a un vendedor', 29,25);

--113
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-21',112,0,3,'213123212','acción asignada a un vendedor', 29,25);




----- #30
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-17','data Prueba creador por un promotor',0,3,'87165',53,'LAYHAM FINANCIAL SERVICES C.A.',135,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (30,22);

--114
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-17',null,0,1,'213123212','acción asignada a un vendedor',30,27);

--115
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',114,0,4,'213123212','acción asignada a un vendedor',30,27);

--116
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-20',115,0,2,'213123212','acción asignada a un vendedor',30,27);

--117
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-21',116,0,3,'213123212','acción asignada a un vendedor',30,27);



----- #31
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-17','data Prueba creador por un promotor',0,3,'24234',53,'ANA GABRIELA FIGUEREDO BRICEÑO',127,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (31,15);

--118
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-17',null,0,1,'213123212','acción asignada a un aliado',31,89);

--119
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',118,0,4,'213123212','acción asignada a un aliado',31,89);

--120
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-20',119,0,2,'213123212','acción asignada a un aliado',31,89);

--121
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-21',120,0,3,'213123212','acción asignada a un aliado',31,89);


----- #32
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-17','data Prueba creador por un promotor',0,3,'37947',53,'CALE REFRIGERACION C A',26,2);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (32,22);

--122
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-17',null,0,1,'213123212','acción asignada a un aliado',32,64);

--123
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-18',122,0,4,'213123212','acción asignada a un aliado',32,64);

--124
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-20',123,0,2,'213123212','acción asignada a un aliado',32,64);

--125
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-21',124,0,3,'213123212','acción asignada a un aliado',32,64);


----- #33
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-21','data Prueba creador por un promotor',0,1,'11551',53,'LAVANDERIA Y TINTORERIA QUICK PRESS C.A.',26,1);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (33,21);

--126
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-22',null,0,1,'666666','acción asignada a un aliado',33,64);

--127
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-22',126,0,4,'666666','acción asignada a un aliado',33,64);

--128
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-22',127,0,1,'666666','acción asignada a un aliado',33,64);

--129
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-23',128,0,2,'666666','acción asignada a un aliado',33,11);



----- #34
INSERT INTO OportunidadDeVenta 
(FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente,IdCreador, NombreCliente, IdVendedor,Origen)
VALUES ('2020-09-23','data Prueba creador por un promotor',0,1,'32097',149,'DEL CORTES SOLUCIONES PARA OFICINAS, C.A.',26,1);

INSERT INTO ProductoOportunidad (NroOportunidad, ProductoId) VALUES (34,18);

--130
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-24',null,0,1,'666666','acción asignada a un aliado',34,149);

--131
INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-09-24',130,0,4,'666666','acción asignada a un aliado',34,64);

