use my_DB2

insert into dbo.Orders(ord_id, ord_datetime, ord_an) values
(1,'2020-02-05', 1),
(2,'2020-02-08', 1),
(3,'2021-08-23', 1),
(4,'2022-12-01', 2),
(5,'2023-04-26', 3)

insert into dbo.Groups(gr_id, gr_name, gr_temp) values
(1, 'long time detected', -12.5),
(2, 'short tome detected', 18.7)

insert into dbo.Analysis(an_id, an_name, an_cost, an_price, an_group) values
(1, 'ease analis', 1000, 800, 2),
(2, 'blood analis', 3000, 2900, 1),
(3, 'corona analisys', 1300, 1200, 2)

