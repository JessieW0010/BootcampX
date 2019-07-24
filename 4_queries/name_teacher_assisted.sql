SELECT DISTINCT teachers.name AS teacher, cohorts.name AS cohort
FROM assistance_requests
JOIN students ON students.id = student_id
JOIN cohorts ON students.cohort_id = cohorts.id 
JOIN teachers ON teachers.id = teacher_id
GROUP BY teacher, cohort
ORDER BY teacher;
