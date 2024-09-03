
SELECT DISTINCT sb.id, sb.name
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE gr.student_id = <student_id> AND sb.teacher_id = <teacher_id>;


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
SELECT DISTINCT sb.id, sb.name
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE gr.student_id = <student_id> AND sb.teacher_id = <teacher_id>;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()