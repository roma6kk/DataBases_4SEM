SELECT 
    ITEMS.ID_������,
    ITEMS.������������_������,
    ITEMS.����,
    ORDERS.ID_������,
    ORDERS.����_������,
    ORDERS.����������_�����������_������
FROM 
    ITEMS
INNER JOIN 
    ORDERS ON ITEMS.ID_������ = ORDERS.ID_������
WHERE 
    ITEMS.������������_������ LIKE '%��%'
ORDER BY 
    ITEMS.������������_������, ORDERS.����_������ DESC;