CREATE DATABASE `employee_tracker_database`;

CREATE TABLE department (
id INT AUTO_INCREMENT,
name VARCHAR(30) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE role (
id INT AUTO_INCREMENT,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT NOT NULL,
PRIMARY KEY(id),
FOREIGN KEY(department_id) REFERENCES department(id)
);

CREATE TABLE employee (
id INT AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,
role_id INT NOT NULL,
manager_id INT,
PRIMARY KEY(id),
FOREIGN KEY(role_id) REFERENCES role(id),
FOREIGN KEY(manager_id) REFERENCES employee(id)
);

INSERT INTO department(name)
VALUES ('Accounting'), ('Supply Chain'), ('Marketing'), ('Human Resources');

INSERT INTO role(title, salary, department_id)
VALUES ('Credit Analyst', 45000 , 1),
('FP&A Analyst', 55000 ,1),
('FP&A Manager', 110000 , 1),
('Accounting Intern', 35000 ,1),
('Operations Manager',90000 ,2),
('Operations Analyst', 65000 , 2),
('Customer Service Rep', 40000 , 2),
('Marketing Product Manager', 85000 , 3),
('Social Media Intern', 45000 , 3),
('Marketing Channel Analyst', 75000 , 3),
('Human Resources Analyst', 60000 , 4),
('Human Resources Manager', 90000 , 4),
('Workday Analyst', 65000 , 4);

INSERT INTO employee(first_name, last_name, role_id, manager_id)
VALUES
('Chewbacca','Solo',1, null),
('Han', 'Solo', 2, 3),
('Boba', 'Fett', 3, null),
('Jabba', 'Hutt', 4, null),
('Luke', 'Skywalker', 5, null),
('Lando', 'Calrissian', 6, null),
('Leia', 'Organa', 7, 5),
('ObiWan', 'Kenobi', 8, null),
('Mace', 'Windu', 9, 8),
('Ploo', 'Koon', 10, 13), 
('QuiGon', 'Jin', 11,null),
('IG', 'EightyEight', 12, null),
('Rtwo', 'Dtwo', 13, null);