create or replace function mejorcliente return number as
    mejorCliente DEMO_CUSTOMERS.CUSTOMER_ID%TYPE;
begin   
    SELECT ID 
    INTO mejorCliente
    FROM (SELECT DEMO_ORDERS.CUSTOMER_ID AS ID
    FROM DEMO_ORDERS
    GROUP BY DEMO_ORDERS.CUSTOMER_ID
    ORDER BY SUM(DEMO_ORDERS.ORDER_TOTAL) DESC)
    WHERE ROWNUM = 1;
    return mejorCliente;
END;
/
begin
    clg(mejorcliente);
end;
