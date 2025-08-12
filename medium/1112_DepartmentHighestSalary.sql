# Write your MySQL query statement below
SELECT
    d.name AS department,
    e.name AS employee,
    e.salary
FROM employee AS e
INNER JOIN department AS d ON e.departmentid = d.id
WHERE e.salary = (
    SELECT MAX(e2.salary)
    FROM employee AS e2
    WHERE e2.departmentid = e.departmentid
)
