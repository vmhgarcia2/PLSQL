CREATE OR REPLACE TRIGGER log_state_borrar
AFTER DELETE ON DEMO_STATES
FOR EACH ROW
DECLARE
        fecha_actual DATE := SYSDATE;
        mensaje DEMO_LOGS.mensaje%TYPE := 'Registro borrado en state';
BEGIN
    INSERT INTO DEMO_LOGS(fecha,mensaje) values(fecha_actual,mensaje);
END;

