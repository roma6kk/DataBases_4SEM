SELECT 
    TableA.ID,
    TableA.ValueA,
    TableB.ValueB
FROM 
    TableA 
INNER JOIN 
    TableB  ON TableA.ID = TableB.ID
