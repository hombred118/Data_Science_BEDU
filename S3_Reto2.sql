show keys from venta;
show keys from empleado;
select * from puesto;
select * from empleado;
# Muestra datos de la tabla empleado y nombre del pesto de cada id puesto y su salario.
select * from empleado as e join puesto as p where e.id_puesto = p.id_puesto;

#Left join
select * from puesto as p left join empleado as e on p.id_puesto = e.id_puesto;
#Right join
select * from puesto as p right join empleado as e on p.id_puesto = e.id_puesto;

######AQUI EMPIEZA RETO 2######

select * from venta;
select * from articulo;
-- ¿Cuál es el nombre de los empleados que realizaron cada venta?
select nombre from empleado as e join venta as v on e.id_empleado = v.id_empleado order by nombre;
-- ¿Cuál es el nombre de los artículos que se han vendido?
select nombre from articulo as a join venta as v on a.id_articulo = v.id_articulo order by id_venta;
-- ¿Cuál es el total de cada venta?
select clave, nombre, sum(precio) as total from venta as v join articulo as a on v.id_articulo = a.id_articulo group by clave, nombre order by clave;