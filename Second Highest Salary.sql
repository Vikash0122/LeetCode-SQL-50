-- Method 1
SELECT MAX(e1.salary) as SecondHighestSalary
FROM Employee e1 INNER JOIN Employee e2
WHERE e1.salary < e2.salary;

-- Method 2
SELECT COALESCE(
    (SELECT DISTINCT salary 
     FROM Employee
     ORDER BY salary DESC
     LIMIT 1 OFFSET 1), 
    NULL) AS SecondHighestSalary;

-- Method 3
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
