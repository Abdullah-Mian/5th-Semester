create database Students
create table studentinfo (Name varchar(15),Reg_No int,Courses varchar(15),Course_Code int,Offered_By varchar(15))
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Ali',01,'DIP',1001,'Mr. A')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Basit',02,'DBMS',1002,'Mr. X')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Akram',03,'OS',1003,'Mr. Y')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Asad',04,'DBMS',1002,'Mr. X')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Zeeshan',05,'DIP',1001,'Mr. A')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Muneer',06,'OS',1003,'Mr. Y')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Shafqat',07,'NM',1004,'Mr. H')
insert into studentinfo(Name,Reg_No,Courses,Course_Code,Offered_By) values('Ahsan',08,'OS',1003,'Mr. Y')
insert into studentinfo(Name,Reg_No,Courses) values('Ikram',09,'DIP')
insert into studentinfo(Name,Reg_No) values('Hassan',10)

SELECT * from studentinfo

UPDATE studentinfo set Course_Code=1001,Offered_By='Mr. A' where Reg_No=9;
update studentinfo set Courses='DSP',Course_Code=1005,Offered_By='Mr. Z' where Reg_No=10;

delete from studentinfo where Name='Akram';
delete from studentinfo where Name='Ahsan';

select distinct Courses,Course_Code,Offered_By from studentinfo;

Select * from studentinfo order by Name DESC;

drop table studentinfo;