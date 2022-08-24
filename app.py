#!/usr/bin/python3

import os
import connection
import sqlparse

if __name__ == '__main__':
    print(f"[INFO] Service ETL is Starting ...")
    conf = connection.config('postgresql')
    conn, engine = connection.conn(conf)
    cursor = conn.cursor()

    path_query = os.getcwd()+'/query/'
    query_create = sqlparse.format(
        open(
            path_query+'query_create.sql','r'
        ).read(), strip_comments=True).strip()

    query_insert = sqlparse.format(
        open(
            path_query+'query_insert.sql','r'
        ).read(), strip_comments=True).strip()

    try:
        print(f"[INFO] Service ETL is Running ...")
        cursor.execute(query_create)
        cursor.execute(query_insert)
        conn.commit()

        print(f"[INFO] Service ETL is Succeed ...")
    except:
        print(f"[INFO] Service ETL is Failed")