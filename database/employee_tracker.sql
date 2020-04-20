-- Drops the employeeTracker if it exists currently --
DROP DATABASE IF EXISTS employeeTracker;
-- Creates the "employeeTracker" database --
CREATE DATABASE employeeTracker;

-- Makes it so all of the following code will affect employeeTracker --
USE employeeTracker;

CREATE TABLE department (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30),
  PRIMARY KEY(id)
  );

CREATE TABLE roles (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(15) NOT NULL,
  department_id INT (10) NOT NULL,
  FOREIGN KEY (department_id) REFERENCES department(id),
  PRIMARY KEY(id)
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  role_id INT (10) NOT NULL,
  manager_id INT(20) NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id),
  PRIMARY KEY(id)
);

