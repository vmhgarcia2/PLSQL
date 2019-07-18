CREATE OR REPLACE FUNCTION NumeroLineas (id number) RETURN NUMBER AS
    total number;
BEGIN
    SELECT COUNT(*) into total
    FROM DEMO_ORDER_ITEMS  
    WHERE DEMO_ORDER_ITEMS.ORDER_ID = id;    
    RETURN total;
END;
/
BEGIN
    CLG(NumeroLineas(11));
END;