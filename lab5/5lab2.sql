use A_MyBASE;
select c.покупатель, c.телефон
from CUSTOMERS c
where c.id_покупателя in (
    select o.id_покупателя
    from orders o
    where o.id_товара in (
        select i.id_товара
        from items i
        where i.наименование_товара like '%хрусталь%'
    )
);

select distinct c.покупатель, c.телефон
from CUSTOMERS c
inner join orders o on c.id_покупателя = o.id_покупателя
inner join items i on o.id_товара = i.id_товара
where i.наименование_товара like '%хрусталь%';

select top 1 i.наименование_товара, sum(o.количество_заказанного_товара) as общее_количество
from ITEMS i
inner join ORDERS o on i.id_товара = o.id_товара
group by i.наименование_товара
order by общее_количество desc;

select i.наименование_товара, i.цена
from ITEMS i
where not exists (
    select 1
    from orders o
    where o.id_товара = i.id_товара
);

select
    (select avg(цена) from items) as средняя_цена,
    (select avg(количество_заказанного_товара) from orders) as средний_размер_заказа,
    (select avg(количество_на_складе) from items) as средний_запас_на_складе;

select наименование_товара, цена
from items
where цена > all (
    select i.цена
    from items i
    where i.наименование_товара like '%хрусталь%'
);

select наименование_товара, цена
from ITEMS
where цена > any (
    select i.цена
    from ITEMS i
    where i.наименование_товара like '%хрусталь%'
);
