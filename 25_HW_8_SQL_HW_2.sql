create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('Ben Foster'),
	   ('Lloyd Doyley'),
	   ('Danny Shittu'),
	   ('Jay DeMerit'),
	   ('Chris Powell'),
	   ('Gavin Mahon'),
	   ('James Chambers'),
	   ('Damien Francis'),
	   ('Ashley Young'),
	   ('Marlon King'),
	   ('Darius Henderson'),
	   ('Clarke Carlisle'),
	   ('Matthew Spring'),
	   ('Richard Lee'),
	   ('Hameur Bouazza'),
	   ('Tamas Priskin'),
	   ('Jordan Stewart'),
	   ('Alec Chamberlain'),
	   ('Anthony McNamee'),
	   ('Malky Mackay'),
	   ('Albert Jarrett'),
	   ('Dominic Blizzard'),
	   ('Sheku Kamara'),
	   ('Alhassan Bangura'),
	   ('Petr Cech'),
	   ('Paulo Ferreira'),
	   ('John Terry'),
	   ('Ricardo Carvalho'),
	   ('Wayne Bridge'),
	   ('Michael Essien'),
	   ('Michael Ballack'),
	   ('Arjen Robben'),
	   ('Frank Lampard'),
	   ('Didier Drogba'),
	   ('Andriy Shevchenko'),
	   ('Joe Cole'),
	   ('Carlo Cudicini'),
	   ('Claude Makelele'),
	   ('Shaun Wright-Phillips'),
	   ('Khalid Boulahrouz'),
	   ('Geremi'),
	   ('William Gallas'),
	   ('Nuno Mourais'),
	   ('Robert Huth'),
	   ('Salomon Kalou'),
	   ('Hilario'),
	   ('Lassana Diarra'),
	   ('John Obi Mikel'),
	   ('Jonas Elmer'),
	   ('Codina'),
	   ('Palencia'),
	   ('Jeffrey'),
	   ('Agus'),
	   ('Dani Guillen'),
	   ('Javi Garcia'),
	   ('De la Red'),
	   ('Borja Valero'),
	   ('Negredo'),
	   ('Mata'),
	   ('Bueno'),
	   ('Santacruz'),
	   ('Jose Manuel'),
	   ('Casilla'),
	   ('Ernesto Gomez'),
	   ('Esteban Granero'),
	   ('Sergio'),
	   ('Tebar'),
	   ('Rayco'),
	   ('Thaer'),
	   ('Adrian Gonzalez');
	   

select * from employees;


--delete from employees where id>3;
--===================================================================================

create table salary(
	id serial primary key,
	monthly_salary int not null
);

insert into salary(monthly_salary)
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400);
   
select * from salary;

--delete from salary where id>15;
--========================================================================================
create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null,
	foreign key (employee_id)
		references employees(id),
	foreign key (salary_id)
		references salary(id)
);

insert into employee_salary(employee_id, salary_id)
values (40, 10),
(11, 6),
(67, 4),
(13, 6),
(33, 9),
(23, 10),
(45, 4),
(1, 8),
(37, 2),
(26, 5),
(38, 9),
(35, 12),
(21, 5),
(19, 6),
(72, 12),
(4, 11),
(95, 14),
(15, 5),
(2, 3),
(31, 14),
(64, 1),
(71, 8),
(25, 3),
(14, 5),
(73, 12),
(17, 13),
(36, 14),
(7, 15),
(39, 13),
(6, 14),
(28, 3),
(29, 10),
(30, 4),
(51, 11),
(85, 15),
(24, 10),
(5, 10),
(93, 5),
(32, 4),
(10, 13);

select * from employee_salary;

--===========================================================

create table roles(
	id serial primary key,
	role_name int not null unique
);

--alter column role_name type varchar(30) using role_name::varchar(30);
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

insert into roles(role_name)
values ('Junior Python developer'),
	   ('Middle Python developer'),
	   ('Senior Python developer'),
	   ('Junior Java developer'),
	   ('Middle Java developer'),
	   ('Senior Java developer'),
	   ('Junior JavaScript developer'),
	   ('Middle JavaScript developer'),
	   ('Senior JavaScript developer'),
	   ('Junior Manual QA engineer'),
	   ('Middle Manual QA engineer'),
	   ('Senior Manual QA engineer'),
	   ('Project Manager'),
	   ('Designer'),
	   ('HR'),
	   ('CEO'),
	   ('Sales manager'),
	   ('Junior Automation QA engineer');
	   
--=========================================================
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null
);

--сложно
insert into roles_employee(employee_id, role_id)
values (40, 13),
(11, 9),
(67, 7),
(13, 9),
(33, 12),
(23, 13),
(45, 7),
(1, 11),
(37, 5),
(26, 8),
(38, 12),
(35, 15),
(21, 8),
(19, 9),
(72, 15),
(4, 14),
(95, 17),
(15, 8),
(2, 6),
(31, 17),
(64, 4),
(71, 11),
(25, 6),
(14, 8),
(73, 15),
(17, 16),
(36, 17),
(7, 18),
(39, 16),
(6, 17),
(28, 6),
(29, 13),
(30, 19),
(51, 20),
(85, 15),
(24, 10),
(5, 13),
(93, 5),
(32, 6),
(10, 11);

select * from roles_employee;