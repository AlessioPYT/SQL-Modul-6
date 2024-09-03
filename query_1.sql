
SELECT student_id, AVG(grade) as average_grade
FROM grades
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 5;
