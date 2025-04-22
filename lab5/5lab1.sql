use UNIVER;
select P.PULPIT_NAME
from PULPIT P
where P.FACULTY in (
    select PROFESSION.FACULTY
    from PROFESSION
    where PROFESSION_NAME like '%����������%' or PROFESSION_NAME LIKE '%����������%'
);

select distinct P.PULPIT_NAME
from PULPIT P
inner join PROFESSION PR on P.FACULTY = PR.FACULTY
where P.FACULTY in (
    select FACULTY
    from PROFESSION
    where PROFESSION_NAME like '%����������%' or PROFESSION_NAME LIKE '%����������%'
);

select distinct P.PULPIT_NAME
from PULPIT P
inner join FACULTY F on P.FACULTY = F.FACULTY
inner join PROFESSION PR on F.FACULTY = PR.FACULTY
where PR.PROFESSION_NAME like '%����������%' or PR.PROFESSION_NAME like '%����������%';

select A.AUDITORIUM_TYPE, A.AUDITORIUM_CAPACITY
from AUDITORIUM A
where A.AUDITORIUM_CAPACITY = (
	select top 1 AUDITORIUM_CAPACITY
	from AUDITORIUM A2
	where A2.AUDITORIUM_TYPE = A.AUDITORIUM_TYPE	
	order by AUDITORIUM_CAPACITY DESC
)
order by AUDITORIUM_CAPACITY DESC

select F.FACULTY_NAME
from FACULTY F
where not exists (
	select * from PULPIT P
	where F.FACULTY = P.FACULTY
);

select
	(select avg(note) from PROGRESS
		where subject = '����') as '����',
	(select avg(note) from PROGRESS
		where subject = '��') as '��',
	(select avg(note) from PROGRESS
		where subject = '����') as '����'

select A.AUDITORIUM_NAME
from AUDITORIUM A
where A.AUDITORIUM_CAPACITY > all (
    select A2.AUDITORIUM_CAPACITY
    from AUDITORIUM A2
    where A2.AUDITORIUM_TYPE = '��-�'
);

select A.AUDITORIUM_NAME
from AUDITORIUM A
where A.AUDITORIUM_CAPACITY > any (
    select A2.AUDITORIUM_CAPACITY
    from AUDITORIUM A2
    where A2.AUDITORIUM_TYPE = '��-�'
);
