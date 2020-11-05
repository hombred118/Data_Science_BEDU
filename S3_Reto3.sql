select v.clave, v.fecha, a.nombre as producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) as empleado
from venta as v join empleado as e on v.id_empleado = e.id_empleado
join articulo as a on v.id_articulo = a.id_articulo;
use tienda;

create view tickets_120 as
(select v.clave, v.fecha, a.nombre as producto, a.precio, concat(e.nombre, ' ', e.apellido_paterno) as empleado
from venta as v join empleado as e on v.id_empleado = e.id_empleado
join articulo as a on v.id_articulo = a.id_articulo);

select * from tickets_120;

show keys from articulo;

######AQUI EMPIEZA RETO 3######

-- Obtener el puesto de un empleado.
create view puesto_120 as select concat(e.nombre, ' ', e.apellido_paterno) as Nombre, p.nombre as Producto
from empleado as e join puesto as p on e.id_puesto = p.id_puesto;
select * from puesto_120;
-- Saber qué artículos ha vendido cada empleado.
create view articulos_120 as 
(select v.clave as "Clave", v.id_venta as "ID Venta", a.nombre as "Artículo", concat(e.nombre, ' ', e.apellido_paterno) as "Nombre"
from venta as v join articulo as a on v.id_articulo = a.id_articulo
join empleado as e on v.id_empleado = e.id_empleado);
select * from articulos_120;
-- Saber qué puesto ha tenido más ventas.
create view puestos_con_ventas_120 as
(select p.nombre as "Puesto", count(v.id_empleado) "Total"
from venta as v join empleado as e on e.id_empleado = v.id_empleado join puesto as p on e.id_puesto = p.id_puesto group by p.nombre);
select * from puestos_con_ventas_120 order by total desc;