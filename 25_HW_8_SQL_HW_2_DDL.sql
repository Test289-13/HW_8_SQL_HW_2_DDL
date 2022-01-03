create table employees(
	id serial primary key,
	employee_name varchar(50) not null
);

insert into employees(employee_name)
values ('employee_name_1'),
('employee_name_2'),
('employee_name_3'),
('employee_name_4'),
('employee_name_5'),
('employee_name_6'),
('employee_name_7'),
('employee_name_8'),
('employee_name_9'),
('employee_name_10'),
('employee_name_11'),
('employee_name_12'),
('employee_name_13'),
('employee_name_14'),
('employee_name_15'),
('employee_name_16'),
('employee_name_17'),
('employee_name_18'),
('employee_name_19'),
('employee_name_20'),
('employee_name_21'),
('employee_name_22'),
('employee_name_23'),
('employee_name_24'),
('employee_name_25'),
('employee_name_26'),
('employee_name_27'),
('employee_name_28'),
('employee_name_29'),
('employee_name_30'),
('employee_name_31'),
('employee_name_32'),
('employee_name_33'),
('employee_name_34'),
('employee_name_35'),
('employee_name_36'),
('employee_name_37'),
('employee_name_38'),
('employee_name_39'),
('employee_name_40'),
('employee_name_41'),
('employee_name_42'),
('employee_name_43'),
('employee_name_44'),
('employee_name_45'),
('employee_name_46'),
('employee_name_47'),
('employee_name_48'),
('employee_name_49'),
('employee_name_50'),
('employee_name_51'),
('employee_name_52'),
('employee_name_53'),
('employee_name_54'),
('employee_name_55'),
('employee_name_56'),
('employee_name_57'),
('employee_name_58'),
('employee_name_59'),
('employee_name_60'),
('employee_name_61'),
('employee_name_62'),
('employee_name_63'),
('employee_name_64'),
('employee_name_65'),
('employee_name_66'),
('employee_name_67'),
('employee_name_68'),
('employee_name_69'),
('employee_name_70');

select * from employees;

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

create table employee_salary(
	id serial primary key,
	employee_id int not null unique,
	salary_id int not null
);

insert into employee_salary(employee_id, salary_id)
values (41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 6),
(47, 7),
(48, 8),
(49, 9),
(50, 10),
(51, 11),
(52, 12),
(53, 13),
(54, 14),
(55, 15),
(56, 1),
(57, 2),
(58, 3),
(59, 4),
(60, 5),
(61, 6),
(62, 7),
(63, 8),
(64, 9),
(65, 10),
(66, 11),
(67, 12),
(68, 13),
(69, 14),
(70, 15),
(71, 1),
(72, 2),
(73, 3),
(74, 4),
(75, 5),
(76, 6),
(77, 7),
(78, 8),
(79, 9),
(80, 10);

--ALTER TABLE employee_salary
--DROP COLUMN id;

--delete from employee_salary;

select * from employee_salary;

--7. Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique

create table roles(
	id serial primary key,
	role_name int not null unique
);

--8. Поменять тип столба role_name с int на varchar(30)
alter table roles
alter column role_name type varchar(30) using role_name::varchar(30);

--9. Наполнить таблицу roles 20 строками
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
	   ('Junior Automation QA engineer'),
	   ('Middle Automation QA engineer'),
	   ('Senior Automation QA engineer');
	   
--10. Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
	  
create table roles_employee(
	id serial primary key,
	employee_id int not null unique,
	role_id int not null
);

--11. Наполнить таблицу roles_employee 40 строками
insert into roles_employee(employee_id, role_id)
values (41, 1),
(42, 2),
(43, 3),
(44, 4),
(45, 5),
(46, 6),
(47, 7),
(48, 8),
(49, 9),
(50, 10),
(51, 11),
(52, 12),
(53, 13),
(54, 14),
(55, 15),
(56, 16),
(57, 17),
(58, 18),
(59, 19),
(60, 20),
(61, 1),
(62, 2),
(63, 3),
(64, 4),
(65, 5),
(66, 6),
(67, 7),
(68, 8),
(69, 9),
(70, 10),
(71, 11),
(72, 12),
(73, 13),
(74, 14),
(75, 15),
(76, 16),
(77, 17),
(78, 18),
(79, 19),
(80, 20);

select * from roles_employee;