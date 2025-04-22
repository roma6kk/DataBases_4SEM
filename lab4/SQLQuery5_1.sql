SELECT 
    TableA.ValueA,
    TableB.ValueB
FROM 
    TableA
FULL OUTER JOIN 
    TableB ON TableA.ID = TableB.ID

SELECT 
    TableA.ValueA,
    TableB.ValueB
FROM 
    TableB
FULL OUTER JOIN 
    TableA ON TableB.ID = TableA.ID
