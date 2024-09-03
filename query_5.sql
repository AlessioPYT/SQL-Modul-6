
SELECT id, name
FROM subjects
WHERE teacher_id = <teacher_id>;


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
SELECT id, name
FROM subjects
WHERE teacher_id = <teacher_id>;
"""

cursor.execute(sql)

results = cursor.fetchall()
for row in results:
    print(row)

cursor.close()
conn.close()