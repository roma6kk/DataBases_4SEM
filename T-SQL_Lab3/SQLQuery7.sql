USE A_MyBASE;

SELECT * FROM ITEMS;

SELECT Наименование_товара, Цена
FROM ITEMS;

SELECT COUNT(*) AS Количество_покупателей
FROM CUSTOMERS;

UPDATE ITEMS
SET Цена = Цена * 1.10
WHERE ID_товара = 1;

SELECT ID_товара, Наименование_товара, Цена
FROM ITEMS
WHERE ID_товара = 1;