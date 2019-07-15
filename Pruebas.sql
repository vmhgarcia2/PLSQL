DECLARE
    texto varchar2(100):='Hola mundo';
    numero constant number(12,2):=2.2;
    --multiplicador number(6,2):=&mult;
    --texto2 varchar2(100):='&saludo';
    esVerdadero boolean:=true;
    fecha date:=sysdate;
    numero2 number(23,2) NOT NULL:=23.23;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE(texto || ' cruel');
    DBMS_OUTPUT.PUT_LINE(numero);
    --DBMS_OUTPUT.PUT_LINE(numero*multiplicador);
    --DBMS_OUTPUT.PUT_LINE(texto2);
    DBMS_OUTPUT.PUT_LINE(to_timestamp(fecha));
END;