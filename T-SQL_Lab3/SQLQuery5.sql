use A_MyBASE;
ALTER TABLE ITEMS
ADD CONSTRAINT CHK_Производитель_Длина CHECK (LEN(Производитель) >= 3);

select * from ITEMS;

ALTER TABLE ITEMS
drop constraint CHK_Производитель_Длина;
alter table ITEMS
DROP COLUMN Производитель;