SELECT 
    ORDERS.ID_сделки,
    CUSTOMERS.Покупатель,
    ITEMS.Наименование_товара,
    ORDERS.Количество_заказанного_товара,
    ITEMS.Цена,
    ORDERS.Количество_заказанного_товара * ITEMS.Цена as 'Общая сумма'
FROM 
    ORDERS
INNER JOIN 
    CUSTOMERS ON ORDERS.ID_покупателя = CUSTOMERS.ID_покупателя
INNER JOIN 
    ITEMS ON ORDERS.ID_товара = ITEMS.ID_товара