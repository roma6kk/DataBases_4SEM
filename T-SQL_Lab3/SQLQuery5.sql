use A_MyBASE;
ALTER TABLE ITEMS
ADD CONSTRAINT CHK_�������������_����� CHECK (LEN(�������������) >= 3);

select * from ITEMS;

ALTER TABLE ITEMS
drop constraint CHK_�������������_�����;
alter table ITEMS
DROP COLUMN �������������;