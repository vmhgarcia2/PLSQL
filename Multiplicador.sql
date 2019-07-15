DECLARE
    numero number(10):=&numero;
    i number(2):=0;
BEGIN
    while(i<=10) loop
        dbms_output.put_line(numero || '*' || i || '=' || i*numero);
        i:=i+1;
    end loop;
END;