CREATE OR REPLACE TRIGGER log_state_insert
AFTER INSERT ON DEMO_STATES
REFERENCING OLD as OLD NEW AS nuevo
FOR EACH ROW
DECLARE
    fecha_actual DATE := SYSDATE;
    mensaje DEMO_LOGS.mensaje%TYPE := 'Registro insertado en state: ' || :nuevo.STATE_NAME;
BEGIN
    INSERT INTO DEMO_LOGS(fecha,mensaje) values(fecha_actual,mensaje);
END;

