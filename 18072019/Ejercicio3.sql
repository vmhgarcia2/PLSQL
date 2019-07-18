-- Clientes que no han comprado nada
SELECT Clientes.Nombre, STATE_NAME Estado
FROM
(SELECT CUST_FIRST_NAME || ' ' || CUST_LAST_NAME Nombre, CUST_STATE
FROM DEMO_CUSTOMERS Clientes 
FULL OUTER JOIN DEMO_ORDERS Pedidos
ON Pedidos.CUSTOMER_ID = Clientes.CUSTOMER_ID 
WHERE Pedidos.CUSTOMER_ID IS NULL) Clientes
LEFT JOIN 
DEMO_STATES Estados 
ON Estados.ST = Clientes.CUST_STATE;

-- OTRA FORMA
SELECT CUST_FIRST_NAME || ' ' || CUST_LAST_NAME  ||  ' pertenece al estado de ' ||  estados.state_name Resultado
FROM DEMO_CUSTOMERS Clientes 
FULL OUTER JOIN DEMO_ORDERS Pedidos
ON Pedidos.CUSTOMER_ID = Clientes.CUSTOMER_ID 
INNER JOIN DEMO_STATES Estados
ON Estados.ST = Clientes.CUST_STATE
WHERE Pedidos.CUSTOMER_ID IS NULL;