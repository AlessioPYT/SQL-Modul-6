
SELECT g.id as group_id, AVG(gr.grade) as average_grade
FROM grades gr
JOIN students s ON gr.student_id = s.id
JOIN groups g ON s.group_id = g.id
WHERE gr.subject_id = <subject_id>
GROUP BY g.id;
