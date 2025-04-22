SELECT 
    TableA.ID,
    TableA.ValueA,
    TableB.ValueB
FROM 
    TableA
LEFT JOIN 
    TableB ON TableA.ID = TableB.ID
WHERE 
    TableB.ID IS NULL
