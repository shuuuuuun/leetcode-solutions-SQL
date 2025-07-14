# Write your MySQL query statement below
SELECT d.name as Department , e.name as Employee, e.salary as Salary
FROM Employee as e
inner join Department as d on e.departmentid = d.id 
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM Employee e2
    WHERE e2.departmentid = e.departmentid
)
