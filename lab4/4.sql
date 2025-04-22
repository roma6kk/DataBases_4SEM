SELECT 
    ISNULL(ITEMS.Описание, '***'),
    ISNULL(CUSTOMERS.Покупатель, '***')
FROM 
    ITEMS
LEFT OUTER JOIN 
    ORDERS ON ITEMS.ID_товара = ORDERS.ID_товара
LEFT OUTER JOIN 
    CUSTOMERS ON ORDERS.ID_покупателя = CUSTOMERS.ID_покупателя