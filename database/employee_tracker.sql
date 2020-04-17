-- Drops the employeeTracker if it exists currently --
DROP DATABASE IF EXISTS employeeTracker;
-- Creates the "employeeTracker" database --
CREATE DATABASE employeeTracker;

-- Makes it so all of the following code will affect employeeTracker --
USE employeeTracker;

-- Creates the table "employee_tracker" within employeeTracker --
CREATE TABLE department (
  -- Creates a numeric column called "id" which will automatically increment its default value as we create new rows --
  id INTEGER(11) AUTO_INCREMENT NOT NULL,
  -- Makes a string column called "name" which cannot contain null --
  name VARCHAR(30) NOT NULL,
);

CREATE TABLE department (
id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(30),
  PRIMARY KEY(id)
  );

CREATE TABLE role (
  id INT NOT NULL AUTO_INCREMENT,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL(15) NOT NULL,
  department_id INT (10) NOT NULL
 
);

CREATE TABLE employee (
  id INT NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  role_id INT (10) NOT NULL,
  manager_id INT(20) NULL
 );
