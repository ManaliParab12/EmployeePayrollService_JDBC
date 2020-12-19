UC1 Create Database

SHOW DATABASES;

USE payroll_service;

CREATE TABLE employee_payroll
(
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR (100) NOT NULL,
salary DOUBLE NOT NULL,
startDate DATE NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO employee_payroll(name, salary, startDate) VALUES
('Bill', 1000000.00, '2018-01-03'),
('Terisa', 2000000.00, '2019-11-13'),
('Charlie', 3000000.00, '2020-05-21');

UC_2
SELECT * FROM employee_payroll;