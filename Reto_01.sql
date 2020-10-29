use tienda;
show tables;
select * from empleado;
select * from empleado where nombre like 'M%';
select * from empleado where nombre like '%a';
select * from empleado where nombre like 'M%a';
select * from empleado where nombre like 'M___nie';
select * from empleado where nombre like 'K%_y';

######AQUI EMPIEZA RETO 1######

use tienda;
-- ¿Qué artículos incluyen la palabra Pasta en su nombre?
select * from articulo where nombre like '%Pasta%';
-- ¿Qué artículos incluye la palabra Cannelloni en su nombre?
select * from articulo where nombre like '%Cannelloni%';
-- ¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
select * from articulo where nombre like '%-%';
-- ¿Qué puestos incluyen la palabra Designer?
select * from puesto where nombre like '%Designer%';
-- ¿Qué puestos incluyen la palabra Developer?
select * from puesto where nombre like '%Developer%';