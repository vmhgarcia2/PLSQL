create or replace function factorial(numero number) return number as
begin
    if(numero = 1) then
        return 1;
    else
        return numero * factorial(numero-1);
    end if;
end;
/
declare
    numero number := &numero;
begin
    clg('El factorial de ' || numero || ' es : ' || factorial(numero));
end;