SELECT name AS Employee
FROM Employee AS e
WHERE
    e.salary > (
        SELECT salary
        FROM Employee
        WHERE id = e.managerId
    );

