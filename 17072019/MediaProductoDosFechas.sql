-- Muestre media producto entre dos fechas
CREATE OR REPLACE PROCEDURE Media(fecha1 varchar2, fecha2 varchar2) AS
BEGIN
    CLG('Media: ' || TotalIngresos(fecha1,fecha2)/TotalProductos(fecha1,fecha2));
END;
/
BEGIN
    --Media('07/06/19','22/06/19');
    Media('&fecha1','&fecha2');
END;