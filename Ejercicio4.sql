-- Escriba una fecha y decirle si es fin de semana

DECLARE
    fecha varchar(20):= '&fecha';
    fecha2 DATE;
BEGIN
    --2019/07/15
    fecha2 := To_Date(fecha,'yyyy/mm/dd');
    IF((To_char(fecha2,'DY')='DOM') OR (To_char(fecha2,'DY')='SÁB')) THEN
        DBMS_OUTPUT.PUT_LINE(fecha2 || ' es fin de semana');
    else     
        DBMS_OUTPUT.PUT_LINE(fecha2 || ' no es fin de semana');
    END IF;    
END;