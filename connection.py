#!/usr/bin/python3

import os
import json
import psycopg2

from sqlalchemy import create_engine

def config(param):
    path = os.getcwd()
    with open(path+"/config.json") as file:
        conf = json.load(file)[param]
    return conf
    # print(f'{conf}')

def conn(conf):
    # conf = config('postgresql')
    try:
        conn = psycopg2.connect(host=conf['host'],
                                database=conf['db'],
                                user=conf['user'],
                                password=conf['pwd']
                                )
        print(f'[INFO] Connected to {conf} ...')
        engine = create_engine(f"postgresql+psycopg2://{conf['user']}:{conf['pwd']}@{conf['host']}/{conf['db']}")
        return conn, engine
    except:
        print(f"[INFO] Can't connect to {conf}")