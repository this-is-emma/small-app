import psycopg2
from dotenv import load_dotenv
import os

load_dotenv()
def getToDo():
    conn = psycopg2.connect(dbname="postgres", user="postgres", password="postgres", host=HOST)
    cur = conn.cursor()
    cur.execute('SELECT todo_name, is_active FROM public."ToDo"')
    todo = cur.fetchall()
    cur.close
    conn.close
    return todo
