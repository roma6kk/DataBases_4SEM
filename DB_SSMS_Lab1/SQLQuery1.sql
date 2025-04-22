SELECT Наименование_товара, Дата_поставки
FROM     ORDERS
WHERE  (Дата_поставки > CONVERT(DATETIME, '2025-03-06 00:00:00', 102))