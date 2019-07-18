-- Devuelva Total productos vendidos entre dos fechas
CREATE OR REPLACE FUNCTION TotalProductos (fecha1 varchar2, fecha2 varchar2) RETURN NUMBER AS
    miSuma number;
BEGIN    
    SELECT SUM(DEMO_ORDER_ITEMS.QUANTITY)
    INTO miSuma
    FROM DEMO_ORDERS INNER JOIN DEMO_ORDER_ITEMS
    ON DEMO_ORDERS.ORDER_ID = DEMO_ORDER_ITEMS.ORDER_ID
    WHERE to_char(ORDER_TIMESTAMP, 'DD/MM/YY')>to_date(fecha1, 'DD/MM/YY') 
    AND to_char(ORDER_TIMESTAMP, 'DD/MM/YY')<to_date(fecha2,'DD/MM/YY');
    
    RETURN miSuma;
END;
/
BEGIN
    CLG('Total: ' || TotalProductos('&fecha1','&fecha2'));
END;