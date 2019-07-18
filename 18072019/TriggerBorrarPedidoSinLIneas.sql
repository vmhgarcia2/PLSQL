CREATE OR REPLACE TRIGGER DEMO_ORDER_BorrarPSinLineas
BEFORE DELETE ON DEMO_ORDER_ITEMS
REFERENCING OLD as old NEW AS new
FOR EACH ROW
DECLARE
    miId number;
BEGIN    
    miId:=:old.ORDER_ID;
    if(NumeroLineas(miId)=1) then
        delete from DEMO_ORDERS where DEMO_ORDERS.ORDER_ID =miId; 
    end if;
END;


