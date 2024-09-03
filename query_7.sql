
SELECT s.name, gr.grade, gr.date_received
FROM grades gr
JOIN students s ON gr.student_id = s.id
WHERE s.group_id = <group_id> AND gr.subject_id = <subject_id>;
