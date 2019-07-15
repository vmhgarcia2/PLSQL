-- Escriba una fecha y decirle si es fin de semana

DECLARE
    fecha varchar(20):= '&fecha';
    fecha2 DATE := To_Date(fecha,'yyyy/mm/dd');  
BEGIN
    IF((To_char(fecha2,'D')>5)) THEN
        DBMS_OUTPUT.PUT_LINE(fecha2 || ' es fin de semana');
    else     
        DBMS_OUTPUT.PUT_LINE(fecha2 || ' no es fin de semana');
    END IF;    
END;