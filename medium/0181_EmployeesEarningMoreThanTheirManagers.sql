SELECT e.name AS employee
FROM employee AS e
WHERE
    e.salary > (
        SELECT salary
        FROM employee
        WHERE id = e.managerid
    );
