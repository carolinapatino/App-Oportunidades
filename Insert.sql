INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Abierta','Existen acciones en curso');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Cerrada sin éxito','No se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Cerrada con éxito','Se concretó la venta');
INSERT INTO Estatus (NombreEstatus,Descripcion) VALUES ('Diferida','El cliente pospuso la venta');

INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Llamada', 1,1 );
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Visita', 3,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Email', 1,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Cotización',2,1);
INSERT INTO Actividad (NombreActividad,FrecuenciaRecordatorio,DíasAntesRecordatorio) VALUES ('Otra', 4,1);


INSERT INTO Origen (OrigenNombre) VALUES ('Clientes nos contactó');
INSERT INTO Origen (OrigenNombre) VALUES ('Referido');



INSERT INTO OportunidadDeVenta (FechaCreacion,Objetivo,MontoPresupuesto,Estatus,CodigoCliente, CodigoCreador, CodigoVendedor,Origen)
VALUES ('2020-08-26','otro vendedor',0,1,'777',1,1,2);

INSERT INTO Recordatorio (ProximaFecha) VALUES ('2020-09-03');


INSERT INTO Accion (FechaEjecucion,AccionAnterior,EsCierre,TipoActividad,DatoEspecifico,Descripcion,Oportunidad,AsignadaA) 
VALUES ('2020-08-26',null,0,2,'prueba de un usuario como asignado A','prueba',2,2);
