
SELECT AVG(gr.grade) as average_grade
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE sb.teacher_id = <teacher_id>;


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
SELECT AVG(gr.grade) as average_grade
FROM grades gr
JOIN subjects sb ON gr.subject_id = sb.id
WHERE sb.teacher_id = <teacher_id>;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()