DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE titles;
DROP TABLE departments;

CREATE TABLE departments (
    Dept_no VARCHAR NOT NULL,
    Dept_name VARCHAR NOT NULL,
    PRIMARY KEY (Dept_no)
);

CREATE TABLE titles (
    Title_id VARCHAR NOT NULL,
    Title VARCHAR NOT NULL,
    PRIMARY KEY (Title_id)
);

CREATE TABLE employees (
    Emp_no VARCHAR NOT NULL,
    Emp_title VARCHAR NOT NULL,
    Birth_date DATE NOT NULL,
    First_name VARCHAR NOT NULL,
    Last_name VARCHAR NOT NULL,
    Sex VARCHAR NOT NULL,
    Hire_date DATE NOT NULL,
    PRIMARY KEY (Emp_no),
    FOREIGN KEY (Emp_title) REFERENCES titles (Title_id)
);

CREATE TABLE dept_emp (
    Emp_no VARCHAR NOT NULL,
    Dept_no VARCHAR NOT NULL,
    FOREIGN KEY (Emp_no) REFERENCES employees(Emp_no),
    FOREIGN KEY (Dept_no) REFERENCES departments (Dept_no)
);

CREATE TABLE dept_manager (
    Dept_no VARCHAR NOT NULL,
    Emp_no VARCHAR NOT NULL,
    FOREIGN KEY (Dept_no) REFERENCES departments(Dept_no),
    FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no)
);

CREATE TABLE salaries (
    Emp_no VARCHAR NOT NULL,
    Salary INTEGER NOT NULL,
    FOREIGN KEY (Emp_no) REFERENCES employees (Emp_no)
);