use A_MyBASE;
Create table ITEMS
(
	ID_������ int primary key,
	������������_������ nvarchar(50) not null,
	���� real unique not null,
	�������� nvarchar(100),
	����������_��_������ int not null
)
create table CUSTOMERS (
ID_���������� int primary key,
���������� nvarchar(50) not null,
������� nvarchar(20),
����� nvarchar(100)
)
create table ORDERS(
ID_������ int primary key,
ID_������ int foreign key references ITEMS(ID_������),
ID_���������� int foreign key references CUSTOMERS(ID_����������),
����_������ date not null,
����������_�����������_������ int not null
)