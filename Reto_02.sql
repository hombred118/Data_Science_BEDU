show databases;
use tienda;
show tables;
select * from empleado;
select nombre from empleado where id_puesto = 4;
-- puestos que tienen un salario mayor a 10,000
select * from puesto where salario > 10000;
-- artículos que tienen un precio mayor a 1,000 y un iva mayor a 100
select * from articulo where precio > 1000 and iva >100;
-- ventas que incluyen los artículos 135 o 963 y fueron hechas por los empoleados 835 o 369
select * from venta where id_articulo in (135,963) and id_empleado in (835,369);
select nombre, count(*) "Total" from empleado group by nombre;