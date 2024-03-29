CREATE OR REPLACE TRIGGER anyadir_total
AFTER INSERT ON DEMO_ORDER_ITEMS
REFERENCING OLD as old NEW AS new
FOR EACH ROW
DECLARE
BEGIN
    UPDATE DEMO_ORDERS 
    SET ORDER_TOTAL = ORDER_TOTAL + (:new.UNIT_PRICE * :new.QUANTITY) 
    WHERE DEMO_ORDERS.ORDER_ID =  :new.ORDER_ID;
END;

