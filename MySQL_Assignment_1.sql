


create database employee;

use employee;
create table departments(
department_id int,
department_name varchar(50)
);

create table location (
location_id int,
location varchar(30)
); 


create table Employees(
employee_id int,
employee_name varchar(50),
gender enum('m','F'),
AGE int,
hire_date date,
designation_id varchar(100),
department_id int,
location_id int,
salary decimal(10.2)
);

alter table Employees
add email varchar(100);

alter table Employees
modify designation_id varchar(200);

alter table Employees
drop column age;

alter table Employees
rename column hire_date to date_of_joining;

rename table departments to departments_info;

truncate table Employees;

drop table Employees;

drop database employee;

DROP DATABASE IF EXISTS employee;

CREATE DATABASE employee;

USE employee;

CREATE TABLE Departments(
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Location (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE Employees (
    employee_id INT AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M','F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10,2),

    FOREIGN KEY (department_id)
    REFERENCES Departments(department_id),

    FOREIGN KEY (location_id)
    REFERENCES Location(location_id)
);

SHOW TABLES;

DESC Departments;

DESC Location;

DESC Employees;

SHOW CREATE TABLE Employees;

SHOW CREATE TABLE Departments;

SHOW CREATE TABLE Location;
INSERT INTO Departments
VALUES (1, 'HR');

INSERT INTO Location (location)
VALUES ('Chennai');

INSERT INTO Employees
(employee_name, gender, age, designation,
 department_id, location_id, salary)
VALUES
('Ravi', 'M', 25, 'Analyst', 1, 1, 25000);



SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;

INSERT INTO Departments
VALUES (1, 'Finance');
INSERT INTO Departments
VALUES (1, 'Finance');
INSERT INTO Departments
VALUES (1, 'Finance');INSERT INTO Departments
VALUES (1, 'Finance');
INSERT INTO Location (location)
VALUES ('Chennai');

INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES ('Kumar', 'M', 17, 1, 1);
SHOW CREATE TABLE Employees;
SELECT * FROM Departments;
SELECT * FROM Location;
SELECT * FROM Employees;
INSERT INTO Departments
VALUES (2, 'Finance');
INSERT INTO Location (location)
VALUES ('Villupuram');
INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES
('Arun', 'M', 24, 2, 2);
SELECT * FROM Location;
SELECT * FROM Departments;
SELECT department_id, department_name
FROM Departments;
SELECT location_id, location
FROM Location;
INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES
('Arun', 'M', 24, 2, 2);

INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
SELECT
    'Arun',
    'M',
    24,
    d.department_id,
    l.location_id
FROM Departments d
CROSS JOIN Location l
WHERE d.department_name = 'Finance'
AND l.location = 'Villupuram';
SELECT
    e.employee_id,
    e.employee_name,
    d.department_name,
    l.location
FROM Employees e
JOIN Departments d
ON e.department_id = d.department_id
JOIN Location l
ON e.location_id = l.location_id;
INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES ('Test1', 'X', 25, 1, 1);
INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES ('Suresh', 'M', 26, 1, 1);
SELECT employee_name, hire_date
FROM Employees;
SHOW TABLES;

SHOW CREATE TABLE Departments;

SHOW CREATE TABLE Location;

SHOW CREATE TABLE Employees;
SELECT employee_name, hire_date
FROM Employees;
INSERT INTO Employees
(employee_name, gender, age, department_id, location_id)
VALUES
('Test', 'X', 25, 1, 1);
