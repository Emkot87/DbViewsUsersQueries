CREATE VIEW 'work_schedule' AS
SELECT employees.id, employees.last_name AS last_name, employees.first_name AS first_name, schedule.start_shift AS start_time, shedule.end_shift AS end_time
FROM employees JOIN works_at ON employees.id = works_at.employee_id
    JOIN schedule ON shedule.id = works_at.shedule_id;