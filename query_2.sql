
SELECT student_id, AVG(grade) as average_grade
FROM grades
WHERE subject_id = <subject_id>
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 1;


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
SELECT student_id, AVG(grade) as average_grade
FROM grades
WHERE subject_id = <subject_id>
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 1;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()