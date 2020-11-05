use tienda;
#Cuál es la sua de los últimos 5
select * from puesto;
select max(id_puesto) -5 from puesto;
select sum(salario) from puesto where id_puesto > (select max(id_puesto) -5 from puesto);
#Primero se realiza la consulta en el paréntesis, y después la consulta de afuera. No importa si se cambia
#el id_puesto, siempre se cambiará y no será necesario realizar lo anterior.alter

#Junior executive
select id_puesto from puesto where nombre = 'Junior Executive';

#Subconsulta
select * from empleado where id_puesto in(select id_puesto from puesto where nombre = 'Junior Executive');

#Saber la mayor cantidad de ventas en un artículo.alter

select * from venta;
select clave, id_articulo, count(*) as Cantidad
from venta group by clave, id_articulo order by cantidad desc;
#agrupa primero clave y luego agrupa por artículo.

# obtener cantidad mínima de un artículo
select id_articulo, min(cantidad) as "Cantidad Mínima", max(cantidad) as "Cantidad Máxima"
from (
select clave, id_articulo, count(*) as Cantidad
from venta group by clave, id_articulo order by cantidad desc) as Subconsulta
group by id_articulo;

######AQUI EMPIEZA RETO 1######
select * from empleado;
-- ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?
select nombre from empleado where id_puesto in(select id_puesto from puesto where salario < 10000);
-- ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?
select id_empleado, min(cantidad) as cantidad_minima, max(cantidad) as cantidad_maxima from(
select clave, id_empleado, count(*) cantidad from venta group by clave, id_empleado
) as sq group by id_empleado order by id_empleado asc;
-- ¿Cuáles claves de venta incluyen artículos cuyos precios son mayores a $5,000?
select clave, id_articulo, id_venta from venta where id_articulo in(select id_articulo from articulo where precio > 5000);