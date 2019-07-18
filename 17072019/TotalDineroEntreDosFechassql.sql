-- Devuelva total dinero ingresado entre dos fechas
CREATE OR REPLACE FUNCTION TotalIngresos (fecha1 varchar2, fecha2 varchar2) RETURN NUMBER AS
    miSuma number;
BEGIN
    SELECT SUM(ORDER_TOTAL)
    INTO miSuma
    FROM DEMO_ORDERS
    WHERE to_date(ORDER_TIMESTAMP, 'DD/MM/YY')>to_date(fecha1, 'dd/mm/yy')
    AND to_date(ORDER_TIMESTAMP, 'DD/MM/YY')<to_date(fecha2, 'dd/mm/yy');
    
    RETURN miSuma;
END;
/
BEGIN
    CLG('Total de ingresos: ' || TotalIngresos('&fecha1','&fecha2'));
END;