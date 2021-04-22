
DELETE Parametro;
DELETE Origen;
DELETE ProductoOportunidad;
DELETE Recordatorio;
DELETE Accion;
DELETE OportunidadDeVenta;
DELETE Estatus;
DELETE Producto;
DELETE Actividad;
DELETE PermisoUsuario;
DELETE UsuarioEquipo;
DELETE Equipo;
DELETE Permiso;
DELETE Usuario;
DELETE Rol;


DBCC CHECKIDENT (Parametro, RESEED, 0);
DBCC CHECKIDENT (Origen, RESEED, 0);
DBCC CHECKIDENT (ProductoOportunidad, RESEED, 0);
DBCC CHECKIDENT (Recordatorio, RESEED, 0);
DBCC CHECKIDENT (Accion, RESEED, 0);
DBCC CHECKIDENT (OportunidadDeVenta, RESEED, 0);
DBCC CHECKIDENT (Estatus, RESEED, 0);
DBCC CHECKIDENT (Producto, RESEED, 0);
DBCC CHECKIDENT (Actividad, RESEED, 0);
DBCC CHECKIDENT (PermisoUsuario, RESEED, 0);
DBCC CHECKIDENT (UsuarioEquipo, RESEED, 0);
DBCC CHECKIDENT (Equipo, RESEED, 0);
DBCC CHECKIDENT (Permiso, RESEED, 0);
DBCC CHECKIDENT (Usuario, RESEED, 0);
DBCC CHECKIDENT (Rol, RESEED, 0);

