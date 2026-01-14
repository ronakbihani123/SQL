-- correlated query is a query that depends on outer query 
-- corelated subquery is a query that is repeated subsequently
-- it is executed repeatedly based on the output of outer query 
-- it is executed for each row of outer query 
-- they are slower in nature


-- Correlated subquery example


create database regexcorr;
use regexcorr;

CREATE TABLE employee (
    eid INT PRIMARY KEY,
    ename VARCHAR(50),
    salary INT,
    department_name VARCHAR(50)
);

INSERT INTO employee (eid, ename, salary, department_name) VALUES
(1,  'Emp1',  30000, 'HR'),
(2,  'Emp2',  32000, 'HR'),
(3,  'Emp3',  34000, 'HR'),
(4,  'Emp4',  36000, 'HR'),
(5,  'Emp5',  38000, 'HR'),

(6,  'Emp6',  50000, 'IT'),
(7,  'Emp7',  52000, 'IT'),
(8,  'Emp8',  54000, 'IT'),
(9,  'Emp9',  56000, 'IT'),
(10, 'Emp10', 58000, 'IT'),

(11, 'Emp11', 60000, 'Finance'),
(12, 'Emp12', 62000, 'Finance'),
(13, 'Emp13', 64000, 'Finance'),
(14, 'Emp14', 66000, 'Finance'),
(15, 'Emp15', 68000, 'Finance'),

(16, 'Emp16', 40000, 'Sales'),
(17, 'Emp17', 42000, 'Sales'),
(18, 'Emp18', 44000, 'Sales'),
(19, 'Emp19', 46000, 'Sales'),
(20, 'Emp20', 48000, 'Sales');

select department_name , avg(salary) from employee group by department_name;

SELECT e1.ename,
       e1.salary,
       e1.department_name
FROM employee e1
WHERE e1.salary >
(
    SELECT AVG(e2.salary)
    FROM employee e2
    WHERE e2.department_name = e1.department_name
);

-- get the emp name , salary , dept whose salary equal to minimum salary of that department 

select e1.ename, e1.salary , e1.department_name from employee as e1 
where e1.salary = (select min(salary) from employee as e2 where e1.department_name
= e2.department_name);
