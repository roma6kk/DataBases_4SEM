Use A_MyBASE;
SELECT 
    CUSTOMERS.Покупатель,
    ITEMS.Наименование_товара,
    CASE 
        WHEN ORDERS.Количество_заказанного_товара = 1 THEN 'один'
        WHEN ORDERS.Количество_заказанного_товара = 2 THEN 'два'
    END,
    ORDERS.Количество_заказанного_товара,
    ORDERS.Дата_сделки
FROM 
    ORDERS
INNER JOIN 
    CUSTOMERS ON ORDERS.ID_покупателя = CUSTOMERS.ID_покупателя
INNER JOIN 
    ITEMS ON ORDERS.ID_товара = ITEMS.ID_товара
WHERE 
    ORDERS.Количество_заказанного_товара BETWEEN 1 AND 3
ORDER BY 
    ORDERS.Количество_заказанного_товара DESC;