#Se solicita crear poblar una nueva tabla con el precio y estado de los items a fin del día. Tener en cuenta que debe ser reprocesable.
#Vale resaltar que en la tabla Item, vamos a tener unicamente el último estado informado por la PK definida.
#(Se puede resolver a traves de StoreProcedure)

CREATE DEFINER=`root`@`localhost` PROCEDURE `item_active_today`()
BEGIN
-- ---------------
-- create table for active items
-- ---------------
CREATE TABLE active_item(
	idactive_item INT NOT NULL AUTO_INCREMENT,
	item INT NOT NULL,
	price FLOAT NOT NULL,
	PRIMARY KEY (idactive_item))
ENGINE = InnoDB
;
-- ---------------
-- insert values active items
-- ---------------
INSERT INTO active_item(item, price)
SELECT item.iditem AS item, item.price AS price
FROM item
WHERE item.cancel_date IS NOT NULL
;
-- ---------------
-- create table for cancel item
-- ---------------
CREATE TABLE cancel_item(
	idcancel_item INT NOT NULL AUTO_INCREMENT,
	item INT NOT NULL,
	price FLOAT NOT NULL,
	PRIMARY KEY (idcancel_item))
ENGINE = InnoDB
;
-- ---------------
-- insert values for cancel item
-- ---------------
INSERT INTO active_item(item, price)
SELECT item.iditem AS item, item.price AS price
FROM item
WHERE item.cancel_date IS NULL;
END