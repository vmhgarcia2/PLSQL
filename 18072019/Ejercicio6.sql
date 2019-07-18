-- Nombre y cantidad de compras
SELECT  DEMO_CUSTOMERS.CUST_FIRST_NAME Nombre, 
SUM(QUANTITY) TOTAL_PRODUCTOS, 
SUM(QUANTITY * UNIT_PRICE) TOTAL_GASTADO
FROM DEMO_ORDER_ITEMS
LEFT JOIN DEMO_ORDERS
ON DEMO_ORDER_ITEMS.ORDER_ID = DEMO_ORDERS.ORDER_ID
LEFT JOIN DEMO_CUSTOMERS
ON DEMO_ORDERS.Customer_ID = DEMO_CUSTOMERS.CUSTOMER_ID
GROUP BY DEMO_CUSTOMERS.CUSTOMER_ID, DEMO_CUSTOMERS.CUST_FIRST_NAME
ORDER BY TOTAL_PRODUCTOS

