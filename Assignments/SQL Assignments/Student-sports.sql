
show databases;
create database assignment_1;
use assignment_1;

-- Tables creation --
create table students(
AdmNo int NOT NULL PRIMARY KEY,
Name varchar(255) NOT NULL,
class int NOT NULL,
SEC varchar(255) NOT NULL,
RNO int NOT NULL,
Address varchar(255) NOT NULL,
Phone int 
);

desc students;
insert into students values(1271,'Utkarsha Madaan',12,'C',1,'C-32,Punjabi bagh',4356154);
insert into students values(1324,'Utkarsha Madaan',10,'A',1,'31,Mohan Nagar ',435654);
insert into students values(1325,'Utkarsha Madaan',10,'A',2,'12/21,Chand Nagar ',145654);
insert into students values(1328,'Utkarsha Madaan',10,'B',23,'59,Moti Nagar',4135654);
insert into students values(1364,'Utkarsha Madaan',11,'B',13,'12, Janak Puri',null);
insert into students values(1434,'Utkarsha Madaan',12,'B',21,'69,Rohini ',null);
insert into students values(1461,'Utkarsha Madaan',11,'B',1,'D-34,Model Town ',243554);
insert into students values(2324,'Utkarsha Madaan',12,'C',1,'1/2, Gulmohar Park',143654);
insert into students values(2328,'Utkarsha Madaan',10,'A',18,'21/23B,Vishal Enclave',24356154);
insert into students values(2371,'Utkarsha Madaan',11,'C',12,'37, Raja Garden',435654);
select * from students;


create table sports (
 AdmNo int NOT NULL ,
 Game varchar(255) NOT NULL,
 coachName varchar(255) NOT NULL,
 Grade varchar(2) NOT NULL,
 Constraint PRIMARY KEY (AdmNo,Game)
);

alter table sports add foreign key (AdmNo) references students(AdmNo);

desc sports;
insert into sports values (1271,'Basket Ball','I.Malhotra','A'); 
insert into sports values (1271,'Volleyball','M.P.Singh','B'); 
insert into sports values (1324,'Cricket','Narendra','A'); 
insert into sports values (1364,'Volleyball','M.P.Singh','A'); 
insert into sports values (1364,'Basket Ball','I.Malhotra','B'); 
insert into sports values (1434,'Basket Ball','I.Malhotra','B'); 
insert into sports values (1434,'Cricket','Narednra','A'); 
insert into sports values (1461,'Cricket','Narendra','B'); 
insert into sports values (2328,'Basket Ball','I.Malhotra','A'); 
insert into sports values (2328,'Cricket','Narednra','B'); 
insert into sports values (2371,'Basket Ball','I.Malhotra','A'); 
select * from sports;
------------------------------------------------------------------------------------------------

-- Queries -- 
-- Display the lowest and the highest classes from the table STUDENTS -- 
select max(class) as "highest", min(class) as "lowest" from students;

-- Display the number of students in each class from the table STUDENTS. --
select class, count(class) as "No.of Students in each class" from students group by class;

-- Display the number of students in class 10 --
select count(class) from students where class = 10;

-- Display details of the students of Cricket team --
select students.* from students join sports using(admNo) where game='Cricket';

-- Display the Admission number, name, class, section, and roll number of the students whose grade in the Sports table is ‘A’. --
select students.admno,name,class,sec,rno from students join sports using(admNo) where grade='A';

--  Display the name and phone number of the students of class 12 who are playing some game. --
select name,phone from students join sports using(admNo) where class=12 and game is not null;

-- Display the number of students with each coach. --
 select coachname,count(admNo) from sports group by coachname;
 
 --  Display the names and phone numbers of the students whose grade is ‘A’ and whose coach is Narendra. --
 select name,phone from students join sports using(admNo) where grade='A'and coachname='Narendra';
 
 --  Identify the Foreign Keys (if any) of these tables. Justify your choices --
 -- Foreign Key = AdmNo -- because it is common for both tables and can be used to perform join operations between both tables
 
SELECT class, sec, count(*) FROM students GROUP BY class, sec;
SELECT Game, COUNT(*) FROM Sports GROUP BY Game; 
SELECT game, name, address FROM students, Sports WHERE students.admno = sports.admno AND grade = 'A'; 
SELECT Game FROM students, Sports WHERE students.admno = sports.admno AND Students.AdmNo = 1434; 
 






