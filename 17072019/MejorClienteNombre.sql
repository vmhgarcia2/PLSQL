create or replace procedure mejorclienteNombre as
    nombre DEMO_CUSTOMERS.CUST_FIRST_NAME%type;
begin
    select CUST_FIRST_NAME into nombre 
    from DEMO_CUSTOMERS where CUSTOMER_ID = mejorCliente;
    CLG(nombre);        
end;
/
begin
    mejorclienteNombre;
end;
