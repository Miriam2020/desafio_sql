# Listar los usuarios que cumplan años el día de hoy cuya cantidad de ventas realizadas en enero 2020 sean superior a 1500

SELECT first_name AS Nombre, last_name AS Apellido, birth_date AS Fecha_Nacimiento, sum(total) as Total_ventas
FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
WHERE MONTH(birth_date) = MONTH(NOW())
AND DAY(birth_date) = DAY(NOW())-1
GROUP BY idcustomer
HAVING total_ventas > 1500

#Por cada mes del 2020, se solicita el top 5 de usuarios que más vendieron ($) en la categoría Celulares.
#Se requiere el mes y año del análisis, nombre y apellido del vendedor, cantidad de ventas realizadas, cantidad de productos vendidos y el monto total transaccionado.

SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '01'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) enero
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '02'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) febrero
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '03'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) marzo
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '04'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) abril
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '05'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) mayo
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '06'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) junio
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '07'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) julio
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '08'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) agosto
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '09'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) septiembre
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '10'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) octubre
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '11'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) noviembre
UNION ALL
SELECT * FROM (
	SELECT MIN(MONTH(date)) AS Mes, MIN(YEAR(date)) AS Anio, first_name AS Nombre, last_name AS Apellido, sum(total) AS Total_valor , sum(quantity) AS Total_unidades,  count(idpurchase_order) AS Cantidad_ventas
	FROM customer INNER JOIN purchase_order ON idcustomer = customer_idcustomer
	WHERE YEAR(date) = '2020'
	AND MONTH(date) = '12'
	GROUP BY idcustomer
    ORDER BY Total_valor DESC
    LIMIT 5) diciembre




