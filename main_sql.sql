-- CREATE TABLE main (
--     id serial PRIMARY KEY,
--     item varchar(256) NOT NULL,
--     date_of_completion date,
--     completed_by varchar(100),
--     link text,
--     is_completed bool NOT NULL default false 
-- );

-- INSERT INTO main (item, date_of_completion, completed_by, link, is_completed)
--         VALUES ('', , '', '', '');

conn = sqlite3.connect('       ')
cursor = conn.cursor()


cursor.execute('''
CREATE TABLE IF NOT EXISTS main (
    id integer PRIMARY KEY,
    item text NOT NULL,
    date_of_completion date,
    completed_by text,
    link text,
    is_completed boolean NOT NULL DEFAULT false
)
''')
conn.commit()



def mark_as_completed(task_id):
    cursor.execute('''
    UPDATE main
    SET is_completed = true
    WHERE id = ?
    ''', (task_id,))
    conn.commit()

def view_all_tasks():
    cursor.execute('SELECT * FROM main')
    return cursor.fetchall()

def view_completed_tasks():
    cursor.execute('SELECT * FROM main WHERE is_completed = true')
    return cursor.fetchall()

def view_incomplete_tasks():
    cursor.execute('SELECT * FROM main WHERE is_completed = false')
    return cursor.fetchall()

def delete_task(task_id):
    cursor.execute('DELETE FROM main WHERE id = ?', (task_id,))
    conn.commit()


conn.close()
