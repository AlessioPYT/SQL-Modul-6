
SELECT student_id, AVG(grade) as average_grade
FROM grades
WHERE subject_id = <subject_id>
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 1;
