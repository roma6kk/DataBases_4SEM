SELECT 
    ORDERS.ID_������,
    CUSTOMERS.����������,
    ITEMS.������������_������,
    ORDERS.����������_�����������_������,
    ITEMS.����,
    ORDERS.����������_�����������_������ * ITEMS.���� as '����� �����'
FROM 
    ORDERS
INNER JOIN 
    CUSTOMERS ON ORDERS.ID_���������� = CUSTOMERS.ID_����������
INNER JOIN 
    ITEMS ON ORDERS.ID_������ = ITEMS.ID_������