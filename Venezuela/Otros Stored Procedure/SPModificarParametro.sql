CREATE PROC [dbo].[ModificarParametro] (@PrimerHorario TIME, @SegundoHorario TIME = NULL)
AS 
BEGIN 
UPDATE PARAMETRO
SET PrimerHorario = @PrimerHorario,
SegundoHorario = @SegundoHorario
SELECT * FROM Parametro
END