WITH cte AS (
    SELECT e.id, e.name, e.salary, e.departmentid, d.name AS department_name,
    DENSE_RANK() OVER (PARTITION BY e.departmentid ORDER BY e.salary DESC) AS rn
    FROM employee_table e
    INNER JOIN department_table d ON e.departmentid = d.id
)

SELECT department_name as dep, name, salary
FROM cte
WHERE rn = 1;