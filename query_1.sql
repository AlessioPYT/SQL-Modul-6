
SELECT student_id, AVG(grade) as average_grade
FROM grades
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 5;



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
GROUP BY student_id
ORDER BY average_grade DESC
LIMIT 5;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()
