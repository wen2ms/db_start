-- Execution order: FROM > WHERE > GROUP BY > HAVING > SELECT > ORDER BY  > LIMIT
SELECT emp.name emp_name, emp.age emp_age FROM employee emp WHERE emp.age > 15 ORDER BY emp_age DESC;