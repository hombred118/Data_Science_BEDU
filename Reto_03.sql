select * from articulo;
select nombre, sum(precio) as precio_total from articulo group by nombre;
select nombre, count(*) as "Cantidad" from articulo group by nombre order by cantidad desc;
select * from puesto;
select nombre, min(salario) as "Salario mínimo", max(salario) "Salario Máximo" from puesto group by nombre;


######AQUI EMPIEZA RETO 3######


select * from puesto;
-- ¿Cuántos registros hay por cada uno de los puestos?
select nombre, count(*) as "Registros por puesto" from puesto group by nombre;
-- ¿Cuánto dinero se paga en total por puesto?
select nombre, sum(salario) from puesto group by nombre;
-- ¿Cuál es el número total de ventas por vendedor?
show tables;
select * from venta;
select id_empleado, count(id_venta) as "Número total de ventas" from venta group by id_empleado;
-- ¿Cuál es el número total de ventas por artículo?
select id_articulo, count(id_venta) as "Número total de ventas" from venta group by id_articulo;