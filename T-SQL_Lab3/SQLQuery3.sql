use A_MyBASE;
Create table ITEMS
(
	ID_товара int primary key,
	Наименование_товара nvarchar(50) not null,
	Цена real unique not null,
	Описание nvarchar(100),
	Количество_на_складе int not null
)
create table CUSTOMERS (
ID_покупателя int primary key,
Покупатель nvarchar(50) not null,
Телефон nvarchar(20),
Адрес nvarchar(100)
)
create table ORDERS(
ID_сделки int primary key,
ID_товара int foreign key references ITEMS(ID_товара),
ID_покупателя int foreign key references CUSTOMERS(ID_покупателя),
Дата_сделки date not null,
Количество_заказанного_товара int not null
)