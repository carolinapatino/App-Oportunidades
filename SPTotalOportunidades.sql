CREATE PROC TotalOportunidades 
AS 
BEGIN 
	SELECT COUNT(*), E.NombreEstatus FROM OportunidadDeVenta  O, Estatus E
	WHERE O.Estatus = E.EstatusId
	Group By E.NombreEstatus 
	UNION 
	SELECT COUNT(*), 'Total' FROM OportunidadDeVenta
END 