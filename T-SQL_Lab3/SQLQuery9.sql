use A_MyBASE;
go

create table ITEMS
(
    ID_товара int primary key,
    Наименование_товара nvarchar(50) NOT NULL,
    Цена real unique NOT NULL,
    Описание nvarchar(100),
    Количество_на_складе int NOT NULL
)
on FG1;