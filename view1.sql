CREATE VIEW `work_schedule` AS SELECT employees.id, employees.last_name, employees.first_name, schedule.day, 
schedule.start_shift AS start_time, schedule.end_shift AS end_time FROM employees JOIN works_at ON 
employees.id = works_at.employee_id     JOIN schedule ON schedule.id = works_at.schedule_id ORDER BY Schedule.day;