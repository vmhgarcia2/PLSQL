-- Lineas de pedidos y clientes que lo han comprado
SELECT ORDER_ID "Id", ORDER_TOTAL "Total pedido", CUST_FIRST_NAME || ' ' || CUST_LAST_NAME "Nombre"
FROM DEMO_ORDERS Pedidos 
LEFT JOIN DEMO_CUSTOMERS Clientes
ON Pedidos.CUSTOMER_ID = Clientes.CUSTOMER_ID 
ORDER BY ORDER_ID
