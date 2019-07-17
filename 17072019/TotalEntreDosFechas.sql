-- Devuelva Total productos vendidos entre dos fechas
CREATE OR REPLACE FUNCTION TotalProductos (fecha1 DATE, fecha2 DATE) RETURN NUMBER AS
    miSuma number;
BEGIN    
    SELECT SUM(DEMO_ORDER_ITEMS.QUANTITY)
    INTO miSuma
    FROM DEMO_ORDERS INNER JOIN DEMO_ORDER_ITEMS
    ON DEMO_ORDERS.ORDER_ID = DEMO_ORDER_ITEMS.ORDER_ID
    WHERE to_char(ORDER_TIMESTAMP, 'DD/MM/YY')>fecha1 
    AND to_char(ORDER_TIMESTAMP, 'DD/MM/YY')<fecha2;
    
    RETURN miSuma;
END;
/
BEGIN
    CLG('Total: ' || TotalProductos('07/06/19','22/06/19'));
END;