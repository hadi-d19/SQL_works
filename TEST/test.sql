SELECT * FROM employee;

SELECT * FROM exam;

SELECT * FROM employee WHERE department = 'sales' AND leavee > 5;

SELECT COUNT(*) FROM employee WHERE department = 'operations';

SELECT COUNT(*) FROM employee GROUP BY department;

SELECT department,SUM(leavee) FROM Employee GROUP BY department HAVING SUM(leavee) > 10;

SELECT employee.name FROM employee JOIN exam ON employee.id = exam.employee_id WHERE exam.exam_status = 'pass';

SELECT name FROM employee WHERE id NOT IN (SELECT employee_id FROM exam);