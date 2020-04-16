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
id INTEGER NOT NULL AUTO_INCREMENT,
  title VARCHAR(50),
  salary INTEGER(10),
  department_id numeric(10)
);

CREATE TABLE employee (
  id INTEGER NOT NULL AUTO_INCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  role_id INTEGER (10) NOT NULL,
  manager_id INTEGER (20) NOT NULL


  -- Creates a boolean column called "five_times" that sets the default value to false if nothing is entered --
--   five_times BOOLEAN DEFAULT false,
--   score INTEGER(10),
--   PRIMARY KEY (id)
-- );
