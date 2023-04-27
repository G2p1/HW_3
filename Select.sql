-- Task 1

select an_name, an_price 
from dbo.Analysis as an 
inner join dbo.Orders as ord 
on an.an_id=ord.ord_an
where (ord.ord_datetime >= '2020-02-05') and (ord.ord_datetime <= '2020-02-12');

-- Task 2

select distinct count(ord_id) over(partition by month(ord_datetime)) as SelledTest,
month(ord_datetime) as PerMonth, YEAR(ord_datetime) as perYear
from Orders as o 
inner join Analysis as an 
on o.ord_an = an.an_id 
inner join Groups as gr 
on an_group=gr_id 
group by ord_id,ord_datetime;
