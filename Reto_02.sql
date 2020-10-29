######AQUI EMPIEZA RETO 2######
use tienda;
show tables;
-- ¿Cuál es el promedio de salario de los puestos?
select avg(salario) as "Salario promedio" from puesto;
-- ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
select count(*) as "Total artículos" from articulo where nombre like '%Pasta%';
-- ¿Cuál es el salario mínimo y máximo?
select min(salario) as "Salario Mínimo", max(salario) as "Salario Máximo" from puesto;
-- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
select count(*) from puesto where id_puesto;
select sum(salario) as "Suma de últimos cinco puestos" from puesto where id_puesto > 995;