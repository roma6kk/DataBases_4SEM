SELECT 
    ISNULL(ITEMS.��������, '***'),
    ISNULL(CUSTOMERS.����������, '***')
FROM 
    ITEMS
LEFT OUTER JOIN 
    ORDERS ON ITEMS.ID_������ = ORDERS.ID_������
LEFT OUTER JOIN 
    CUSTOMERS ON ORDERS.ID_���������� = CUSTOMERS.ID_����������