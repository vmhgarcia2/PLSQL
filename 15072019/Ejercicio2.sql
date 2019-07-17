--Escriba un programa que pida un número entero mayor que cero y que escriba sus divisores.

DECLARE
    numero number(10,0) := &numero;
    
BEGIN
    DBMS_OUTPUT.PUT_LINE('LOS DIVISORES DE ' || numero || ' SON:');
    if(numero>0) then
        for contador in 1..numero loop
            if(MOD(numero,contador) = 0) then
                DBMS_OUTPUT.PUT_LINE(contador);
            end if;
        end loop;
    else    
        DBMS_OUTPUT.PUT_LINE('El número tiene que ser mayor que 0');
    end if;
END;