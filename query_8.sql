
SELECT AVG(gr.grade) as average_grade
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE sb.teacher_id = <teacher_id>;
