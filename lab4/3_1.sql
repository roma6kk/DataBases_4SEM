Use A_MyBASE;
SELECT 
    CUSTOMERS.����������,
    ITEMS.������������_������,
    CASE 
        WHEN ORDERS.����������_�����������_������ = 1 THEN '����'
        WHEN ORDERS.����������_�����������_������ = 2 THEN '���'
    END,
    ORDERS.����������_�����������_������,
    ORDERS.����_������
FROM 
    ORDERS
INNER JOIN 
    CUSTOMERS ON ORDERS.ID_���������� = CUSTOMERS.ID_����������
INNER JOIN 
    ITEMS ON ORDERS.ID_������ = ITEMS.ID_������
WHERE 
    ORDERS.����������_�����������_������ BETWEEN 1 AND 3
ORDER BY 
    ORDERS.����������_�����������_������ DESC;