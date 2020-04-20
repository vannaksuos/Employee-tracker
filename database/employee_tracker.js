var mysql = require("mysql");
var inquirer = require("inquirer");

// create the connection information for the sql database
var connection = mysql.createConnection({
  host: "localhost",

  // Your port; if not 3306
  port:3306,

  // Your username
  user: "root",

  // Your password
  password:"abc123",
  database: "employeetracker"
});

// connect to the mysql server and sql database
connection.connect(function(err) {
  if (err) throw err;
  // run the start function after the connection is made to prompt the user
  start();
});

// function which prompts the user for what action they should take
function start() {
  inquirer
    .prompt({
        message: "What would you like to do?",
        name: "toDo",
        type: "list",
        choices: ["Add departments, roles, employees",
        "View departments, roles, employees",
        "Update employee roles"
    ]})
.then(function(answer) {
    // based on their answer, either call the bid or the post functions
    if (answer.toDo ==="Add departments, roles, employees")
 {
     runAddFunction();
    }
    else if(answer.toDo === "View departments, roles, employees") {
      runViewFunction();
 }    else if(answer.toDo === "Update employee roles") {
        upDateEmployeeRoleFunction();  
    } else{
      connection.end();
    }
  });
}

function runAddFunction() {
    inquirer
    .prompt({
        message: "Which one would you like to add?",
        name: "toDo",
        type: "list",
        choices: ["departments",
        "roles",
        "employees"
    ]})
    .then(function(answer) {
        if (answer.toDo === "departments") {
            addDepartment();
        }
        else if(answer.toDo === "roles") {
            addRole ();
        }
        else if(answer.toDo === "employees") {
            addEmployee();
        }
    })
}

function runViewFunction() {
    inquirer
    .prompt({
        message: "Which one would you like to view?",
        name: "toDo",
        type: "list",
        choices: ["departments",
        "roles",
        "employees"
    ]})
    .then(function(answer) {
        if (answer.toDo === "departments") {
            viewDepartment();
        }
        else if(answer.toDo === "roles") {
            viewRole ();
        }
        else if(answer.toDo === "employees") {
            viewEmployee();
        }
    })
}

function viewDepartment() {
    connection.query ("SELECT * FROM department",
    function(error, data) {
        if (error) throw err;
        console.log(data)
      })

}

function viewRole() {
    connection.query ("SELECT * FROM roles",
    function(error, data) {
        if (error) throw err;
        console.log(data)
      })

}

function viewEmployee() {
    connection.query ("SELECT * FROM employee",
    function(err, data) {
        if (err) throw err;
        console.log(data)
      })

}

function updateFunction() {
    inquirer
    .prompt({
        message: "Which one would you like to update?",
        name: "toDo",
        list: ["departments",
        "roles",
        "employees"
    ]})
    .then(function(answer) {
        if (answer.toDo === "departments") {
           updateDepartment();
        }
        else if(answer.toDo === "roles") {
           updateRole ();
        }
        else if(answer.toDo === "employees") {
           updateEmployee();
        }
    })
}

function addDepartmentFunction () {
    inquirer
    .prompt({
        message: "What's the name of the department",
        name: "departmentName"
    })
    .then(function(answer){
        connection.query("INSERT INTO department (name) VALUES ("+ answer.departmentName +")")
    })
}
function addEmployeeFunction () {
    inquirer
    .prompt({
        message: "What's the name of the employee you want to add?",
        name: "employeeName"
    })
    .then(function(answer){
        connection.query("INSERT INTO employee (name) VALUES ("+ answer.employeeName +")")
    })
}

function addRoleFunction () {
    inquirer
    .prompt({
        message: "What's the role of the employee",
        name: "roleName"
    })
    .then(function(answer){
        connection.query("INSERT INTO roles (name) VALUES ("+ answer.roleName +")")
    })
}