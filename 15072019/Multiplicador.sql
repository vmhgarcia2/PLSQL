DECLARE
    --numero number(10):=&numero;
    i number(2):=0;
BEGIN
    /*
    while(i <= 10) loop
        dbms_output.put_line(numero || ' * ' || i || ' = ' || i*numero);
        i := i + 1;
    end loop;
    */
    /*
    FOR contador IN REVERSE 1..10 LOOP
        dbms_output.put_line(numero || ' * ' || contador || ' = ' || contador*numero);    
    END LOOP;
    */
    i:=0;
    LOOP
        dbms_output.put_line(i);
        EXIT WHEN i>=10;
        i := i + 1;
        IF i = 3 then
            GOTO cestfinie;
        END IF;
    END LOOP;
    
    <<cestfinie>>
    dbms_output.put_line('Se acabó');
END;