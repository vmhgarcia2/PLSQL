-- Escriba un programa que pida un número entero mayor que 1 
-- y que escriba si el número es un número primo o no

DECLARE
    numero number(10,0) := &numeroMayorQue1;
    esPrimo boolean := true;
    contador number(10,0) := 2;
BEGIN
    while esPrimo = true and contador < numero loop
        if(MOD(numero,contador)=0) then
            esPrimo := false;
        end if;
        contador := contador + 1;
    end loop;
    if(esPrimo = false) then
        DBMS_OUTPUT.PUT_LINE(numero || ' no es primo');
    else
        DBMS_OUTPUT.PUT_LINE(numero || ' es primo');
    end if;
END;