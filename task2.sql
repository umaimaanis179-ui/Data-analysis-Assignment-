create schema std_info;
-----------------------------------------------------------------
--student-------

create table std_info.students(
student_id serial primary key,
first_name varchar (25) not null,
last_name varchar (25) not null ,
age int ,
email varchar(30) not null,
department text ,
gpa decimal (10,2)
);

INSERT INTO std_info.students(first_name,last_name,age,email,department,gpa)
VALUES
('Student1','Ali',18,'student1@university.edu','Computer Science',3.95),
('Student2','Ahmed',20,'student2@university.edu','Physics',3.20),
('Student3','Khan',19,'student3@gmail.com','Economics',3.75),
('Student4','Raza',21,'student4@university.edu','Computer Science',2.90),
('Student5','Iqbal',22,'student5@yahoo.com','Mathematics',3.40),
('Student6','Usman',20,'student6@university.edu','Economics',3.60),
('Student7','Farhan',23,'student7@gmail.com','Physics',2.70),
('Student8','Bilal',19,'student8@university.edu','Computer Science',3.85),
('Student9','Hamza',18,'student9@university.edu','Mathematics',3.10),
('Student10','Asad',20,'student10@university.edu','Economics',3.45),
('Student11','Ayan',21,'student11@gmail.com','Computer Science',3.55),
('Student12','Zain',24,'student12@university.edu','Physics',3.00),
('Student13','Hassan',19,'student13@yahoo.com','Economics',3.90),
('Student14','Saad',20,'student14@university.edu','Computer Science',3.65),
('Student15','Omer',22,'student15@gmail.com','Mathematics',2.85);

-------------------------------------------------------------

--Course---
create table std_info.courses(
course_id serial primary key,
course_name varchar(20),
department text not null,
credit_hours int 
);

INSERT INTO std_info.courses(course_name,department,credit_hours)
VALUES
('Database Systems','Computer Science',3),
('Data Structures','Computer Science',3),
('Operating Systems','Computer Science',4),
('Microeconomics','Economics',3),
('Macroeconomics','Economics',3),
('Linear Algebra','Mathematics',3),
('Calculus','Mathematics',4),
('Quantum Physics','Physics',4),
('Mechanics','Physics',3),
('Statistics','Mathematics',3);
----------------------------------------------------------------

--enrollment--
create table std_info.enrollments(
student_id int,
 FOREIGN KEY (student_id)
 REFERENCES std_info.students(student_id),
course_id int, 
foreign key (course_id)
references std_info.courses(course_id) ,
semester int,
grade varchar(2)
);
alter table std_info.enrollments
add column semester varchar(20);
drop column semester;

INSERT INTO std_info.enrollments(student_id,course_id,semester,grade)
VALUES
(1,1,'Fall 2025','A'),
(2,8,'Fall 2025','B'),
(3,4,'Spring 2025','C'),
(4,2,'Fall 2025','A'),
(5,6,'Spring 2025','B'),
(6,5,'Fall 2025','A'),
(7,9,'Spring 2025','C'),
(8,3,'Fall 2025','A'),
(9,7,'Fall 2025','B'),
(10,4,'Fall 2025','C'),
(11,1,'Spring 2025','A'),
(12,8,'Fall 2025','B'),
(13,5,'Fall 2025','A'),
(14,2,'Spring 2025','B'),
(15,6,'Fall 2025','C');
-----------------------------------------------------------------
select *from std_info.students;
select *from std_info.courses;
select *from std_info.enrollments;
select *from std_info.students where department ='Computer Science';
select *from std_info.students where gpa>3.50;
select course_name from std_info.courses where department = 'Economics' ;
select from std_info.students ORDER by gpa DESC  LIMIT 5;
select *from std_info.students where age between 18 and 21;
select *from std_info.students where email like '%@university.edu';
select distinct department from std_info.courses;
select department  ,count (*) as total_student from std_info.students group by department ;
select *from std_info.students where gpa not between 3.0 and 3.8;
select *from std_info.students where first_name like 'Student1%';

----------------------------------------------------------------------------
=



