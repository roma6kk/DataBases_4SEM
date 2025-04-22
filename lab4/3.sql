SELECT 
    ITEMS.ID_товара,
    ITEMS.Наименование_товара,
    ITEMS.Цена,
    ORDERS.ID_сделки,
    ORDERS.Дата_сделки,
    ORDERS.Количество_заказанного_товара
FROM 
    ITEMS
INNER JOIN 
    ORDERS ON ITEMS.ID_товара = ORDERS.ID_товара
WHERE 
    ITEMS.Наименование_товара LIKE '%Лю%'
ORDER BY 
    ITEMS.Наименование_товара, ORDERS.Дата_сделки DESC;