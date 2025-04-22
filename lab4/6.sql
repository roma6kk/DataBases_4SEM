SELECT 
    ORDERS.ID_сделки,
    CUSTOMERS.Покупатель,
    ITEMS.Наименование_товара,
    ORDERS.Количество_заказанного_товара,
    ITEMS.Цена,
    ORDERS.Количество_заказанного_товара * ITEMS.Цена as 'Общая стоимость'
FROM 
    ORDERS
CROSS JOIN 
    CUSTOMERS
CROSS JOIN 
    ITEMS
WHERE 
    ORDERS.ID_покупателя = CUSTOMERS.ID_покупателя
    AND ORDERS.ID_товара = ITEMS.ID_товара
