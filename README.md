![craiyon_220811_databases_warehouse](https://user-images.githubusercontent.com/52866379/222321208-6161eea6-846c-417c-887f-2bfe0bb6f2ef.png)


# SQL Project
This is a SQL project that I completed to demonstrate my proficiency in SQL and database management. In this project, I created a database schema to store information about employees, departments, and their salaries in a fictional company. I used PostgreSQL as the database management system and pgAdmin4 as the client tool.

## Project Structure
The project consists of the following files:

schema.sql: This file contains the SQL code to create the database schema, tables, and relationships.
queries.sql: This file contains the SQL queries to retrieve and analyze data from the database.
README.md: This file provides an overview of the project and instructions on how to use it.
## Database Schema
The database schema consists of four tables:

Employees: This table stores information about employees, including their employee number, birth date, first name, last name, gender, and hire date.
Departments: This table stores information about departments, including their department number and name.
Salaries: This table stores information about employees' salaries, including their employee number, salary amount, and the start and end date of their salary.
Dept_Emp: This table stores information about the department an employee belongs to, including their employee number and the department number.
## SQL Queries
The queries.sql file contains several SQL queries that retrieve and analyze data from the database. Some of the queries include:

SELECT * FROM Employees: This query retrieves all the employees in the database.
SELECT first_name, last_name, salary FROM Employees INNER JOIN Salaries ON Employees.emp_no = Salaries.emp_no: This query retrieves the first name, last name, and salary of all employees.
SELECT COUNT(DISTINCT dept_no) FROM Dept_Emp: This query retrieves the number of departments in the company.
## Lessons Learned
Through this project, I learned how to create a database schema, create tables, and establish relationships between tables. I also learned how to insert data into tables, retrieve data using SQL queries, and analyze data to answer specific questions. Additionally, I gained experience using PostgreSQL as a database management system and pgAdmin4 as the client tool.

Overall, this project allowed me to showcase my skills in SQL and database management and I am excited to continue building on this foundation in future projects.
