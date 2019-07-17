-- Devuelva total dinero ingresado entre dos fechas
CREATE OR REPLACE FUNCTION TotalIngresos (fecha1 DATE, fecha2 DATE) RETURN NUMBER AS
    miSuma number;
BEGIN
    SELECT SUM(ORDER_TOTAL)
    INTO miSuma
    FROM DEMO_ORDERS
    WHERE to_date(ORDER_TIMESTAMP, 'DD/MM/YY')>fecha1 
    AND to_date(ORDER_TIMESTAMP, 'DD/MM/YY')<fecha2;
    
    RETURN miSuma;
END;
/
BEGIN
    CLG('Total de ingresos: ' || TotalIngresos('07/06/19','22/06/19'));
END;