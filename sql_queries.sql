-- CREATE TABLE departments (
--  dept_no VARCHAR(10) PRIMARY KEY,
--  dept_name VARCHAR(40) NOT NULL
-- );

-- CREATE TABLE employees (
--  emp_no INT PRIMARY KEY,
--  emp_title_id VARCHAR(10) NOT NULL,
--  birth_date DATE NOT NULL,
--  first_name VARCHAR(16) NOT NULL,
--  last_name VARCHAR(16) NOT NULL,
--  sex VARCHAR(1) NOT NULL,
--  hire_date DATE NOT NULL
-- );

-- CREATE TABLE titles (
--  title_id VARCHAR(10) PRIMARY KEY,
--  title VARCHAR(50) NOT NULL
-- );

-- CREATE TABLE dept_emp (
--  emp_no INT NOT NULL,
--  dept_no VARCHAR(10) NOT NULL,
--  PRIMARY KEY (emp_no, dept_no),
--  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--  FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
-- );

-- CREATE TABLE salaries (
--   emp_no INT NOT NULL,
--  salary INT NOT NULL,
--  PRIMARY KEY (emp_no),
--  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- CREATE TABLE dept_manager (
--  dept_no VARCHAR(10) NOT NULL,
--  emp_no INT NOT NULL,
--  PRIMARY KEY (dept_no, emp_no),
--  FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--  FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
-- );

-- SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
-- FROM employees AS e
-- INNER JOIN salaries AS s
-- ON e.emp_no = s.emp_no;

-- SELECT first_name, last_name, hire_date
-- FROM employees
-- WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

-- SELECT d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
-- FROM departments AS d
-- INNER JOIN dept_manager AS m
-- ON d.dept_no = m.dept_no
-- INNER JOIN employees AS e
-- ON m.emp_no = e.emp_no;

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name, de.dept_no
-- FROM employees AS e
-- INNER JOIN dept_emp AS de
-- ON e.emp_no = de.emp_no
-- INNER JOIN departments AS d
-- ON de.dept_no = d.dept_no;

-- SELECT first_name, last_name, sex
-- FROM employees
-- WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- SELECT e.emp_no, e.last_name, e.first_name
-- FROM employees AS e
-- INNER JOIN dept_emp AS de
-- ON e.emp_no = de.emp_no
-- INNER JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_name = 'Sales';

-- SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
-- FROM employees AS e
-- INNER JOIN dept_emp AS de
-- ON e.emp_no = de.emp_no
-- INNER JOIN departments AS d
-- ON de.dept_no = d.dept_no
-- WHERE d.dept_name IN ('Sales', 'Development');

-- SELECT last_name, COUNT(*) as frequency
-- FROM employees
-- GROUP BY last_name
-- ORDER BY frequency DESC;
