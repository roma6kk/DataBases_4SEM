use master;
go 
create database A_MyBASE
on primary
(
name = N'A_MyBASE_mdf',
filename = N'D:\Poman\prog\SQL\T-SQL_Lab3\A-MyBASE_mdf.mdf',
size = 1024Kb, maxsize = UNLIMITED, filegrowth=1024KB
),
(
	name=N'A_MyBASE_ndf', 
	filename=N'D:\Poman\prog\SQL\T-SQL_Lab3\A_MyBASE_ndf.ndf',
	size = 1024Kb, maxsize=1Gb, filegrowth=25%
),

filegroup FG1
(
	name=N'A_MyBASE_fg1_1',
	filename = N'D:\Poman\prog\SQL\T-SQL_Lab3\A_MyBASE_fgq-1.ndf',
size = 1024Kb, maxsize=1Gb, filegrowth=25%
),
(
	name=N'A_MyBASE_fg1_2',
	filename = N'D:\Poman\prog\SQL\T-SQL_Lab3\A_MyBASE_fgq-2.ndf',
size = 1024Kb, maxsize=1Gb, filegrowth=25%
)
log on 
(
	name='A_MyBASE_log', filename=N'D:\Poman\prog\SQL\T-SQL_Lab3\A_MyBASE_log.ldf',
	size = 1024Kb, maxsize=2048Gb, filegrowth=10%
);