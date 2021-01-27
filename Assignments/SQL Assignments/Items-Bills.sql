show databases;
create database assignment_2;
use  assignment_2;

create table Items(
I_Code int NOT NULL primary key,
Name varchar(255) NOT NULL,
Category varchar(255) NOT NULL,
Rate int NOT NULL
);

desc Items;
insert into Items values (1001,'Masala Dosa','South Indian',60);
insert into Items values (1002,'Vada sambhar','South Indian',40);
insert into Items values (1003,'Idli Sambhar','South Indian',64);
insert into Items values (2001,'Chow Mein','Chinese',80);
insert into Items values (2002,'Dimsum','Chinese',60);
insert into Items values (2003,'Soup','Chinese',50);
insert into Items values (3001,'Pizza','Italian',240);
insert into Items values (3002,'Pasta','Italian',125);
select * from Items;
update Items Set Rate = 40 where I_Code = 1003;
select * from Items;


create table Bills(
BillNo int NOT NULL,
Date varchar(255) NOT NULL,
I_Code int NOT NULL,
qty int NOT NULL,
Constraint Foreign key (I_Code) references Items(I_Code)
);

desc Bills;
insert into Bills values (1,'2010-04-01',1002,2);
insert into Bills values (1,'2010-04-01',3001,1);
insert into Bills values (2,'2010-04-01',1001,3);
insert into Bills values (2,'2010-04-01',1002,1);
insert into Bills values (2,'2010-04-01',2003,2);
insert into Bills values (3,'2010-04-02',2002,1);
insert into Bills values (4,'2010-04-02',2002,4);
insert into Bills values (4,'2010-04-03',2003,2);
insert into Bills values (5,'2010-04-03',3001,2);
insert into Bills values (5,'2010-04-03',3002,1);
insert into Bills values (5,'2010-04-01',1002,3);
SELECT * FROM bILLS;
----------------------------------------------------------------------

-- Display the average rate of a South Indian item  --
select avg(rate) from items where category="South Indian";

-- Display the number of items in each category. --
select category,count(name) from items group by category;

--  Display the total quantity sold for each item  --
select I_code,sum(qty) from bills group by I_code;

--  Display total quantity of each item sold but don’t display this data for the items whose total quantity sold is less than 3.  --
select I_code,sum(qty) from bills group by I_code having sum(qty)>=3;

--  Display the details of bill records along with the Name of each corresponding item.  --
select billno,date,bills.I_code,name,qty,category from items join bills using(I_code);

--  Display the details of the bill records for which the item is ‘Dosa’.  --
select billno,date,bills.I_code,qty,category,name from items join bills using(I_code) where name like '%Dosa';

--  Display the bill records for each Italian item sold.  --
select billno,date,bills.I_code,CATEGORY,qty from items join bills using(I_code) where category='Italian' group by I_code;

--  Display the total value of items sold for each bill --
select billno,sum(qty),I_Code from bills group by billno;













