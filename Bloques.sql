DECLARE
    numero number(10,2):=0;
BEGIN

    if numero>10 then
        dbms_output.put_line(numero || ' es mayor que 10');
    else
        if(numero=10) then
            dbms_output.put_line(numero || ' es igual que 10');        
        else
            dbms_output.put_line(numero || ' es menor que 10');
        end if;
    end if;
    while numero<10 loop
        dbms_output.put_line(numero);
        numero:=numero+1;
    end loop;
END;
