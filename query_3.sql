
SELECT g.id as group_id, AVG(gr.grade) as average_grade
FROM grades gr
JOIN students s ON gr.student_id = s.id
JOIN groups g ON s.group_id = g.id
WHERE gr.subject_id = <subject_id>
GROUP BY g.id;


import psycopg2


conn = psycopg2.connect(
    dbname="universityGoIt",  
    user="Alexey",      
    password="Alessio",  
    host="localhost",     
    port="5432"           
)

cursor = conn.cursor()

sql = """
SELECT g.id as group_id, AVG(gr.grade) as average_grade
FROM grades gr
JOIN students s ON gr.student_id = s.id
JOIN groups g ON s.group_id = g.id
WHERE gr.subject_id = <subject_id>
GROUP BY g.id;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()