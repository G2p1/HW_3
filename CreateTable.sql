use my_DB2

create table [dbo].[Groups]
(
	[gr_id] int not null,
	[gr_name] varchar(30) not null,
	[gr_temp] float not null,

	constraint [PK_Groups] primary key (gr_id)
)

create table [dbo].[Analysis]
(
	[an_id] int not null,
	[an_name] varchar(30) not null,
	[an_cost] float not null,
	[an_price] float not null,
	[an_group] int not null,

	constraint [PK_Analysis] primary key (an_id),
	constraint [FK_Analysis_Groups] foreign key (an_group) references [dbo].[Groups](gr_id)
)

create table [dbo].[Orders]
(
	[ord_id] int not null,
	[ord_datetime] datetime2 not null,
	[ord_an] int not null,

	constraint [PK_Orders] primary key (ord_id),
	constraint [FK_Orders_Analysis] foreign key (ord_an) references [dbo].[Analysis](an_id)
)