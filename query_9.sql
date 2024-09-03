
SELECT DISTINCT sb.id, sb.name
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE gr.student_id = <student_id>;