CREATE VIEW 'work_schedule' AS
SELECT Employees.id, Employees.last_name, Employees.first_name, Schedule.day, Schedule.start_shift AS start_time, shedule.end_shift AS end_time
FROM employees JOIN works_at ON employees.id = works_at.employee_id
    JOIN schedule ON shedule.id = works_at.shedule_id ORDER BY Schedule.day;