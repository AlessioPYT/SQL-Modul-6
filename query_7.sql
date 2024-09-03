
SELECT s.name, gr.grade, gr.date_received
FROM grades gr
JOIN students s ON gr.student_id = s.id
WHERE s.group_id = <group_id> AND gr.subject_id = <subject_id>;


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
SELECT s.name, gr.grade, gr.date_received
FROM grades gr
JOIN students s ON gr.student_id = s.id
WHERE s.group_id = <group_id> AND gr.subject_id = <subject_id>;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()