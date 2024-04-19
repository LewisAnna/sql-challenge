DROP TABLE "titles";
DROP TABLE "employees";
DROP TABLE "departments";
DROP TABLE "salaries";
DROP TABLE "dept_manager";
DROP TABLE "dept_emp";

CREATE TABLE "titles" (
    title_id VARCHAR PRIMARY KEY,
    "title" VARCHAR(255)   NOT NULL
);


CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL,
    "emp_title_id" VARCHAR   NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    "birth_date" VARCHAR   NOT NULL,
    "first_name" VARCHAR(255)   NOT NULL,
    "last_name" VARCHAR(255)   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" VARCHAR   NOT NULL,
     PRIMARY KEY ("emp_no")
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR(255)   NOT NULL,
    PRIMARY KEY ("dept_no")
);

CREATE TABLE "salaries" ( 
    "emp_no" INTEGER   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	"salary" INTEGER   NOT NULL,
	PRIMARY KEY (emp_no, salary)
);


CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	PRIMARY KEY (emp_no, dept_no)
);
