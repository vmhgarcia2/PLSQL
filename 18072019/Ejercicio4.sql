-- Total pedido por cliente
SELECT ORDER_ID "Id", ORDER_TOTAL "Total pedido", CUST_FIRST_NAME || ' ' || CUST_LAST_NAME "Nombre"
FROM DEMO_ORDERS Pedidos, DEMO_CUSTOMERS Clientes
WHERE Pedidos.CUSTOMER_ID = Clientes.CUSTOMER_ID 
