-- Creates new rows containing data in all named columns --
INSERT INTO department (name)
VALUES ("warehouse");

INSERT INTO roles (title, salary, department_id)
VALUES ("forklift driver", 40000, 1);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Billy", "James", 1, NULL);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ("Tommy", "James", 1, 1);

SELECT first_name, last_name FROM employee;
