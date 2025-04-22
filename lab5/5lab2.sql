use A_MyBASE;
select c.����������, c.�������
from CUSTOMERS c
where c.id_���������� in (
    select o.id_����������
    from orders o
    where o.id_������ in (
        select i.id_������
        from items i
        where i.������������_������ like '%��������%'
    )
);

select distinct c.����������, c.�������
from CUSTOMERS c
inner join orders o on c.id_���������� = o.id_����������
inner join items i on o.id_������ = i.id_������
where i.������������_������ like '%��������%';

select top 1 i.������������_������, sum(o.����������_�����������_������) as �����_����������
from ITEMS i
inner join ORDERS o on i.id_������ = o.id_������
group by i.������������_������
order by �����_���������� desc;

select i.������������_������, i.����
from ITEMS i
where not exists (
    select 1
    from orders o
    where o.id_������ = i.id_������
);

select
    (select avg(����) from items) as �������_����,
    (select avg(����������_�����������_������) from orders) as �������_������_������,
    (select avg(����������_��_������) from items) as �������_�����_��_������;

select ������������_������, ����
from items
where ���� > all (
    select i.����
    from items i
    where i.������������_������ like '%��������%'
);

select ������������_������, ����
from ITEMS
where ���� > any (
    select i.����
    from ITEMS i
    where i.������������_������ like '%��������%'
);
