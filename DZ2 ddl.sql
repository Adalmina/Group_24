--Создать таблицу employees
-- id. serial,  primary key,
-- employee_name. Varchar(50), not null
--Наполнить таблицу employee 70 строками.

create table employees (
		id serial primary key,
		employee_name varchar(50) not null
)

insert into employees (employee_name)
	values  ('Naomi_Moss'),
			('Rodney_Gonzalez'),
			('Joan_Bradley'),
			('Douglas_Cole'),
			('Jeffrey_Hopkins'),
			('Linda_Phillips'),
			('Jimmie_Perez'),
			('Dorothy_Walker'),
			('Michael_Thomas'),
			('Lori_Anderson'),
			('James_Mitchell'),
			('David_Hall'),
			('William_Harris'),
			('Lydia_Torres'),
			('Carrie_Perez'),
			('Edna_Barker'),
			('Christopher_Parsons'),
			('Doris_White'),
			('Jerry_Hall'),
			('Deborah_Ellis'),
			('Susan_Davidson'),
			('Kenneth_Watkins'),
			('Richard_Stokes'),
			('Laura_Young'),
			('James_Harris'),
			('Annette_Gilbert'),
			('Connie_Cooper'),
			('Janet_Turner'),
			('Sharon_Vega'),
			('Joyce_Brown'),
			('Charlotte_Roberson'),
			('Julia_Williams'),
			('Deborah_Gregory'),
			('Carolyn_Jones'),
			('Robert_Vega'),
			('Ronnie_Rodriguez'),
			('Naomi_Smith'),
			('Melissa_Welch'),
			('Antonio_Kennedy'),
			('Kathleen_McCormick'),
			('Raymond_Collins'),
			('Doris_Page'),
			('Mary_Dawson'),
			('Patricia_Perez'),
			('James_Alvarez'),
			('Michael_Brown'),
			('Angela_Hanson'),
			('Patrick_Nichols'),
			('Sidney_Harvey'),
			('Joel_Roberson'),
			('Robert_Stewart'),
			('Walter_Swanson'),
			('Kevin_Joseph'),
			('Janet_White'),
			('Danielle_Drake'),
			('Megan_Williams'),
			('Mary_Newman'),
			('Doris_Brooks'),
			('Helen_Miller'),
			('Matthew_Jensen'),
			('Lester_Armstrong'),
			('Thelma_Romero'),
			('Christine_Holland'),
			('Chris_Williams'),
			('Fred_Davis'),
			('Andrea_Reed'),
			('Alice_Buchanan'),
			('Gerald_Luna'),
			('Toni_Williams'),
			('Irene_Woods')
		;
			

--Создать таблицу salary
-- id. Serial  primary key,
-- monthly_salary. Int, not null
--Наполнить таблицу salary 15 строками:

 
create table salary_3 (
	id serial primary key,
	monthly_salary int not null
)

insert into salary_3(monthly_salary)
	values  (1000),
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
			(2400),
			(2500);		

		
	--	Создать таблицу employee_salary
-- id. Serial  primary key,
-- employee_id. Int, not null, unique
-- salary_id. Int, not null
--Наполнить таблицу employee_salary 40 строками:
-- в 10 строк из 40 вставить несуществующие employee_id

create table employee_salary(	
	id serial primary key,
	employee_id Int not null unique,
	salary_id  Int  not null
)	

insert into employee_salary(employee_id, salary_id)
		values (3, 7),
		       (1, 4),
		       (5, 9),
		       (40, 13),
		       (23, 4),
		       (11,2),
		       (52, 10),
		       (15, 13),
		       (26, 4),
		       (16, 1),
		       (33, 7),
		       (12, 15),
		       (13, 6),
		       (74, 5),
		       (71, 9),
		       (7, 3),
		       (17, 3),
		       (18,7),
		       (19, 11),
		       (20, 5),
		       (21, 2),
		       (22, 1),
		       (72, 9),
		       (24, 2),
		       (25, 6),
		       (73, 9),
		       (27, 4),
		       (28, 6),
		       (78, 3),
		       (79, 3),
		       (75, 5),
		       (32, 9),
		       (77, 4),
		       (34, 6), 
		       (35, 7),
		       (36, 9),
		       (37, 11),
		       (76, 1),
		       (80, 2),
		       (31, 5);
		       
--Создать таблицу roles
-- id. Serial  primary key,
-- role_name. int, not null, unique
--Поменять тип столба role_name с int на varchar(30)
--Наполнить таблицу roles 20 строками:

create table roles_3(	
	id Serial  primary key,
    role_name int not null unique
)


alter table roles_3 
alter column role_name type varchar(30);

insert into roles_3(role_name)
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

          
--Создать таблицу roles_employee
-- id. Serial  primary key,
-- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
-- role_id. Int, not null (внешний ключ для таблицы roles, поле id)
--Наполнить таблицу roles_employee 40 строками:
          
    create table  roles_employee(
    	 id Serial  primary key,
    	 employee_id Int not null unique, 
    	 role_id Int not null,
    	 foreign key (employee_id)
    	 	references employees(id),
    	 foreign key (role_id)
    	 	references roles_3(id) 
    	 
    )   
    
  insert into roles_employee(employee_id, role_id)
	values     (7, 2),
		       (20, 4),
		       (3, 9),
		       (5, 13),
		       (23, 4),
		       (11,2),
		       (10, 9),
		       (22, 13),
		       (21, 3),
		       (34, 4),
		       (6, 7),
		       (12, 15),
		       (13, 16),
		       (30, 5),
		       (31, 9),
		       (9, 13),
		       (17, 3),
		       (18,7),
		       (19, 11),
		       (27, 5),
		       (25, 2),
		       (24, 17),
		       (42, 9),
		       (44, 2),
		       (43, 6),
		       (45, 19),
		       (46, 4),
		       (48, 6),
		       (47, 3),
		       (49, 3),
		       (55, 5),
		       (52, 9),
		       (67, 4),
		       (64, 6), 
		       (65, 7),
		       (36, 9),
		       (37, 11),
		       (66, 7),
		       (70, 20),
		       (61, 5);
	      

--drop table 	employees;	
--drop table 	salary_3;	
--drop table 	employee_salary;	
--drop table 	roles_3;	
--drop table 	roles_employee;	
		      
select * from 	employees;	
select * from	salary_3;	
select * from 	employee_salary;	
select * from	roles_3;	
select * from 	roles_employee;	