use A_MyBASE;
go

create table ITEMS
(
    ID_������ int primary key,
    ������������_������ nvarchar(50) NOT NULL,
    ���� real unique NOT NULL,
    �������� nvarchar(100),
    ����������_��_������ int NOT NULL
)
on FG1;