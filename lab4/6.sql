SELECT 
    ORDERS.ID_������,
    CUSTOMERS.����������,
    ITEMS.������������_������,
    ORDERS.����������_�����������_������,
    ITEMS.����,
    ORDERS.����������_�����������_������ * ITEMS.���� as '����� ���������'
FROM 
    ORDERS
CROSS JOIN 
    CUSTOMERS
CROSS JOIN 
    ITEMS
WHERE 
    ORDERS.ID_���������� = CUSTOMERS.ID_����������
    AND ORDERS.ID_������ = ITEMS.ID_������
