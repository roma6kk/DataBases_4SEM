CREATE TABLE TableA (
    ID INT PRIMARY KEY,
    ValueA VARCHAR(50)
);

CREATE TABLE TableB (
    ID INT PRIMARY KEY,
    ValueB VARCHAR(50)
);

INSERT INTO TableA (ID, ValueA) VALUES 
(1, 'A1'), (2, 'A2'), (3, 'A3'), (4, 'A4');

INSERT INTO TableB (ID, ValueB) VALUES 
(3, 'B3'), (4, 'B4'), (5, 'B5'), (6, 'B6');


