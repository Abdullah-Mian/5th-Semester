use companyDB;
select * from departments
select * from projects
delete from employees where dept_id is null
select * from employees
select * from employeeprojects
delete from employeeprojects where emp_id is null

--C
create or alter view vw_employeeProjectDet 
as
select e.empName , d.dept_name, p.proj_name , ep.hoursworked from employees e
join departments d on d.dept_id = e.dept_id
join projects p on p.dept_id = d.dept_id
join employeeprojects ep on ep.emp_id = e.empID

select * from vw_employeeProjectDet


--B
insert into departments values (4,'fashion'),(5,'Sleep'),(6,'Ferrari'),(7,'Ducati'),(8,'Shapatar');
insert into employees values (7,'Ali',5,16000,NULL),
(8,'UZI',3,15000,'2021-09-15');
insert into projects values(105,'Slau',5), (106,'LaFerrari',6),(107,'bka',7),(108,'Karachii',8);
--E
create table SalaryAudit (logid int identity(1,1) primary key,eid int , old_sal int , new_sal int );
create or alter trigger trg_logsalchnge
on employees
for update
as
 begin
      declare @oldval int
declare @newval int

 select @oldval = d.salary  from deleted d 
 select @newval = i.salary from inserted i
 select i.empID from inserted i
 if update(salary)
  begin
 insert into  SalaryAudit (eid,old_sal,new_sal)
 select i.empID , @oldval , @newval from inserted i
 end
end

update employees set salary = 10 where empID = 1
select * from SalaryAudit
--D
Create or alter procedure getdeptsaldetails
@id int 
as
begin
     select d.dept_name,sum(e.salary)as total_sal , avg(e.salary)as avg_sal, count(e.empID)as total_emp from departments d
	 join employees e on d.dept_id = e.dept_id
	 where d.dept_id = @id
	 group by d.dept_name
end;
exec  getdeptsaldetails 3;
--G
select d.dept_name ,count(p.proj_id) as total_p,sum(ep.hoursworked)as total_h from departments d
join projects p on d.dept_id = p.dept_id
join employeeprojects ep on ep.proj_id = p.proj_id
group by d.dept_name


select * from employees
--I
create role ProjectManager


--H
select top 3 max(e.salary)as sal , e.empName , d.dept_name from employees e
join departments d on d.dept_id = e.dept_id
group by e.empName , d.dept_name
order by sal desc


grant select on  employees to ProjectManager
grant select on  departments to ProjectManager
grant select on  projects to ProjectManager
grant select,insert on employeeprojects to ProjectManager
deny delete on employees to  ProjectManager
deny delete on projects to  ProjectManager
deny delete on departments to  ProjectManager
deny delete on employeeprojects to  ProjectManager

