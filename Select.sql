-- Task 1

select an_name, an_price 
from dbo.Analysis as an 
inner join dbo.Orders as ord 
on an.an_id=ord.ord_an
where (ord.ord_datetime >= '2020-02-05') and (ord.ord_datetime <= '2020-02-12');

-- Task 2