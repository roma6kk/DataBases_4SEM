SELECT 
    TableB.ID,
    TableA.ValueA,
    TableB.ValueB
FROM 
    TableA
RIGHT JOIN 
    TableB  ON TableA.ID = TableB.ID
WHERE 
    TableA.ID IS NULL
