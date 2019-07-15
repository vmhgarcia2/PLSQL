--Escriba un programa que pida dos números enteros y escriba qué números son pares 
--y cuáles impares desde el primero hasta el segundo.
DECLARE
    numero1 number(10,0) := &numero1;
    numero2 number(10,0);
    pares varchar2(50):='';
    impares varchar2(50):='';
    
BEGIN
    numero2 := &numero2;
    if(numero2>=numero1) then
        FOR contador IN numero1..numero2 LOOP
            IF(MOD(contador,2) = 0) then
                if(pares = '') then
                    pares := contador;
                else
                    pares := pares || ' ' || contador;            
                end if;
            ELSE 
                if(impares = '') then
                    impares := contador;
                else
                    impares := impares || ' ' || contador;            
                end if;   
            END IF;
        END LOOP;
        
        DBMS_OUTPUT.PUT_LINE('PARES');
        DBMS_OUTPUT.PUT_LINE(pares);
        DBMS_OUTPUT.PUT_LINE('IMPARES');
        DBMS_OUTPUT.PUT_LINE(impares);
    else    
        DBMS_OUTPUT.PUT_LINE('El segundo número tiene que ser mayor que ' || numero1);
    end if;
END;