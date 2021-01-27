show databases;
create database assignment_3;
use assignment_3;
show tables;

create table vehicle(
RegNo char(10) primary key NOT NULL,
RegDate date,
Owner varchar(30),
Address varchar(50)
);
desc vehicle;
alter table vehicle modify RegNo char(10) NOT NULL;
create table chalaan(
Challan_No int(11) primary key NOT NULL,
Ch_Date date,
RegNo char(10),
Offence_Code int(3),
foreign key(Offence_Code) references offence(Offence_code),
foreign key(RegNo) references vehicle(RegNo)
);
desc chalaan;

create table offence(
Offence_Code int(3) NOT NULL primary key,
Off_Desc varchar(30),
Challan_Amt int(4)
);
desc offence;




















