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

UC_3
UPDATE employee_payroll set salary = %.2f WHERE name = '%s';

UC_4
UPDATE employee_payroll set salary = %.2f WHERE name = '%s';
UC_5
SELECT * FROM employee_payroll WHERE startDate BETWEEN '%s' AND '%s';

UC_6
ALTER TABLE employee_payroll ADD gender CHAR(2) AFTER name;
UPDATE employee_payroll SET gender = 'F' WHERE name = 'Terisa';
UPDATE employee_payroll SET gender = 'M' WHERE name = 'Bill' OR name = 'Charlie';

SELECT gender, AVG(salary) AS avg_salary FROM employee_payroll GROUP BY gender;

UC_7
INSERT INTO employee_payroll (name, gender, salary, startDate) VALUES ('Mark', 'M', 5000000, date(now()));
DELETE FROM employee_payroll WHERE name = 'Mark';

UC_8
CREATE TABLE payroll_details
(
id INT UNSIGNED NOT NULL,
basic_pay DOUBLE NOT NULL,
deductions DOUBLE NOT NULL,
taxable_pay DOUBLE NOT NULL,
tax DOUBLE NOT NULL,
net_pay DOUBLE NOT NULL,
FOREIGN KEY (id) REFERENCES employee_payroll (id)
ON DELETE CASCADE
);

DELETE FROM employee_payroll WHERE name = 'Mark';















