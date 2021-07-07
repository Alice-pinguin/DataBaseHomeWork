
create database thirdHomeWork;
use thirdHomeWork;

create table developers (

developers_id serial primary key,
developers_name varchar(10),
developers_surname varchar(15),
developers_age int(2),
developers_gender enum('female', 'male', 'other')
);

create table skills (
skills_id serial primary key,
language enum('JAVA', 'JS', 'C#', 'C++'),
level enum ('junior', 'middle', 'senior')
);
create table projects (
projects_id serial primary key,
projects_name varchar(25),
projects_field varchar(30)
);
create table companies(
companies_id serial primary key,
companies_name varchar(20),
companies_city varchar (25)
);
create table customers (
customers_id serial primary key,
customers_name varchar(15),
customers_surname varchar (20),
customers_industry varchar(30)
);
create table customers_companies (
customers_id int not null,
companies_is int not null,
projects_id int not null,
foreign key (customers_id) references customers(customers_id),
foreign key (companies_id) references companies(companies_id),
foreign key (projects_id) references projects(projects_id),
unique (customers_id, companies_id, projects_id)
);
create table developers_skills (
developers_id int not null,
skills_id int not null, 
foreign key (developers_id) references developers(developers_id),
foreign key (skills_id) references skills(skills_id),
unique (developers_id, skills_id)
);
create table developers_projects (
developers_id int not null,
projects_id int not null,
foreign key (developers_id) references developers(developers_id),
foreign key (projects_id) references projects(projects_id),
unique (developers_id, skills_id)
);





