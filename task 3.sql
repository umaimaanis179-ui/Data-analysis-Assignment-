create schema companydata;


create table companydata.department(
Department_name varchar(20),
Department_Location VARCHAR(20)
);

drop table companydata.department
ALTER TABLE companydata.department
ADD COLUMN Department_id serial primary key;

INSERT INTO companydata.department (Department_name, Department_Location)
VALUES
('IT','Karachi'),
('HR','Lahore'),
('Finance','Islamabad'),
('Marketing','Karachi'),
('Operations','Lahore'),
('Sales','Karachi'),
('Customer Support','Islamabad'),
('Research ','Karachi'),
('Administration','Lahore'),
('Procurement','Islamabad');

---------------------------------------------------

CREATE TABLE companydata.employees(
first_name VARCHAR(15) NOT NULL,
last_name VARCHAR(15),
Department_id  INT, 
foreign key(Department_id )
references companydata.department(Department_id ),
salary int,
emp_position varchar(30)
);

INSERT INTO companydata.employees
(first_name,last_name,department_id,salary,emp_position)
VALUES
('Raj','Sharma',1,85000,'Developer'),
('Sara','Khan',2,60000,'HR Executive'),
('Ali','Raza',3,95000,'Accountant'),
('Meera','Patel',4,72000,'Marketing Lead'),
('John','Doe',5,90000,'Operations Manager'),
('Ahmed','Ali',1,78000,'Developer'),
('Fatima','Noor',2,62000,'HR Officer'),
('Usman','Iqbal',3,98000,'Finance Manager'),
('Ayesha','Malik',4,76000,'Marketing Executive'),
('Bilal','Hassan',5,81000,'Supervisor'),
('Hamza','Khan',1,83000,'Software Engineer'),
('Hina','Aslam',2,65000,'Recruiter'),
('Saad','Rauf',3,92000,'Auditor'),
('Nida','Ahmed',4,73000,'SEO Specialist'),
('Zain','Iqbal',5,79000,'Coordinator'),
('Asad','Qureshi',1,89000,'System Analyst'),
('Maria','Khan',2,61000,'HR Assistant'),
('Imran','Butt',3,94000,'Senior Accountant'),
('Sana','Ali',4,70000,'Content Writer'),
('Farhan','Raza',5,77000,'Operations Executive'),
('Tariq','Mehmood',1,86000,'Backend Developer'),
('Komal','Shah',2,63000,'HR Manager'),
('Jawad','Sheikh',3,99000,'Finance Officer'),
('Maham','Siddiqui',4,74000,'Brand Manager'),
('Danish','Iqbal',5,82000,'Logistics Officer'),
('Noor','Fatima',1,87500,'Frontend Developer'),
('Shahzad','Khan',2,64000,'Recruitment Officer'),
('Anum','Riaz',3,93000,'Budget Analyst'),
('Kashif','Ali',4,71500,'Digital Marketer'),
('Laiba','Asif',5,80500,'Supply Officer'),
('Rizwan','Ahmed',1,91000,'Database Admin'),
('Saba','Yousaf',2,67000,'HR Coordinator'),
('Talha','Raza',3,96000,'Tax Officer'),
('Iqra','Noor',4,75500,'Marketing Officer'),
('Waqas','Shah',5,83000,'Operations Lead'),
('Adeel','Khan',1,84500,'Network Engineer'),
('Bushra','Ali',2,68000,'Training Officer'),
('Omer','Hussain',3,97000,'Internal Auditor'),
('Rabia','Khan',4,72500,'Graphic Designer'),
('Faisal','Malik',5,80000,'Warehouse Manager'),
('Yasir','Ali',1,89500,'Cloud Engineer'),
('Sidra','Noor',2,66000,'HR Consultant'),
('Arslan','Rauf',3,95500,'Financial Analyst'),
('Kiran','Ahmed',4,73500,'Social Media Manager'),
('Noman','Khalid',5,81500,'Operations Analyst'),
('Haris','Aslam',1,88000,'Full Stack Developer'),
('Amna','Rizvi',2,64500,'Payroll Officer'),
('Zohaib','Sheikh',3,99000,'Chief Accountant'),
('Eman','Khan',4,74500,'Advertising Officer'),
('Sameer','Ali',5,84000,'Project Coordinator');
----------------------------------------------------
create table companydata.projects
(proj_name varchar(30),
Department_id  INT, 
foreign key(Department_id )
references companydata.department(Department_id ) on delete cascade,
budget int ,
start_date varchar(15),
end_date varchar(15)
);
drop table companydata.projects



INSERT INTO companydata.projects
(proj_name,Department_id,budget,start_date,end_date)
VALUES
('Website Revamp',1,500000,'2024-01-01','2024-06-30'),
('Recruitment Drive',2,200000,'2024-02-01','2024-03-31'),
('Audit 2024',3,300000,'2024-03-01','2024-05-31'),
('Ad Campaign',4,400000,'2024-04-01','2024-07-31'),
('Logistics Upgrade',5,250000,'2024-05-01','2024-08-31'),
('ERP System',1,650000,'2024-06-01','2024-12-31'),
('Employee Training',2,180000,'2024-07-01','2024-09-30'),
('Budget Planning',3,220000,'2024-08-01','2024-10-31'),
('Social Media Boost',4,310000,'2024-09-01','2024-12-31'),
('Warehouse Expansion',5,450000,'2024-10-01','2025-02-28'),
('Cloud Migration',1,800000,'2025-01-01','2025-06-30'),
('Campus Hiring',2,250000,'2025-02-01','2025-04-30'),
('Tax Compliance',3,275000,'2025-03-01','2025-05-31'),
('Brand Awareness',4,390000,'2025-04-01','2025-08-31'),
('Fleet Upgrade',5,520000,'2025-05-01','2025-09-30'),
('CRM Development',1,600000,'2025-06-01','2025-11-30'),
('Leadership Training',2,190000,'2025-07-01','2025-09-30'),
('Financial Forecast',3,260000,'2025-08-01','2025-10-31'),
('TV Campaign',4,470000,'2025-09-01','2026-01-31'),
('Inventory System',5,350000,'2025-10-01','2026-02-28'),
('AI Chatbot',1,900000,'2026-01-01','2026-07-31'),
('Performance Review',2,150000,'2026-02-01','2026-04-30'),
('Cost Reduction',3,280000,'2026-03-01','2026-06-30'),
('Email Marketing',4,240000,'2026-04-01','2026-08-31'),
('Transport Automation',5,620000,'2026-05-01','2026-11-30'),
('Cyber Security',1,750000,'2026-06-01','2026-12-31'),
('HR Portal',2,320000,'2026-07-01','2026-10-31'),
('Annual Audit',3,310000,'2026-08-01','2026-12-31'),
('Product Launch',4,580000,'2026-09-01','2027-02-28'),
('Supply Chain',5,690000,'2026-10-01','2027-03-31'),
('Mobile App',1,720000,'2027-01-01','2027-06-30'),
('Intern Program',2,170000,'2027-02-01','2027-04-30'),
('Budget Audit',3,290000,'2027-03-01','2027-06-30'),
('Digital Ads',4,410000,'2027-04-01','2027-08-31'),
('Factory Upgrade',5,850000,'2027-05-01','2027-12-31'),
('Data Warehouse',1,980000,'2027-06-01','2028-01-31'),
('HR Analytics',2,340000,'2027-07-01','2027-11-30'),
('Investment Plan',3,450000,'2027-08-01','2028-02-28'),
('Content Strategy',4,260000,'2027-09-01','2028-01-31'),
('Distribution Plan',5,510000,'2027-10-01','2028-03-31'),
('DevOps Setup',1,650000,'2028-01-01','2028-06-30'),
('Policy Update',2,200000,'2028-02-01','2028-05-31'),
('Finance Dashboard',3,390000,'2028-03-01','2028-07-31'),
('Influencer Campaign',4,480000,'2028-04-01','2028-09-30'),
('Smart Logistics',5,770000,'2028-05-01','2028-11-30'),
('API Integration',1,560000,'2028-06-01','2028-10-31'),
('Employee Survey',2,140000,'2028-07-01','2028-09-30'),
('Risk Analysis',3,330000,'2028-08-01','2028-12-31'),
('Marketing Automation',4,620000,'2028-09-01','2029-02-28'),
('Operations Excellence',5,890000,'2028-10-01','2029-04-30');

----------------------------------------------------
SELECT *FROM companydata.department;
SELECT *FROM companydata.employees;
SELECT *FROM companydata.projects;
-----------------------------------------------
SELECT *FROM companydata.department where Department_name='IT' ;
SELECT * FROM companydata.employees ORDER BY salary DESC LIMIT 5;
SELECT *FROM companydata.employees WHERE last_name LIKE 'S%' ;

SELECT *,CONCAT_WS(' ',first_name,last_name) as Fullname
FROM companydata.employees ;

SELECT string_agg(Department_name,', ')
FROM companydata.department;

 SELECT*, substring(first_name,1,3)as emp_3letter
 FROM companydata.employees;

  SELECT *,replace(emp_position,'Developer','Software Engineer')as replace_
 FROM companydata.employees;
 
select *, trim(' ' from(first_name)) ,
INITCAP(first_name)
from companydata.employees;

SELECT Department_ID , AVG(salary)FROM companydata.employees
GROUP BY Department_ID 
HAVING AVG(salary)>70000 

SELECT Department_ID ,COUNT (*) AS TOTALEMP,
AVG (salary) AS ASALARY
FROM companydata.employees
GROUP BY Department_ID;

-----------
update companydata.employees
set salary=salary *1.10
where emp_position='Finance Manager';

alter table companydata.employees
add constraint salary_check
check (salary>30000)
add column email varchar(50);


select regexp_replace(start_date,'[^0-9]','','g')
from companydata.projects

select proj_name ,
left(proj_name,2) as fist,
right(proj_name,2) as lst,
length(proj_name)as total
FROM companydata.projects

SELECT *FROM companydata.department
where department_name not in ('HR','Marketing')

SELECT dep.department_name, sum(pro.budget)
FROM companydata.department as dep 
join companydata.projects as  pro on pro.Department_id=dep.Department_id

group by dep.department_name;