import psycopg2
from config import config
from configparser import ConfigParser
from datetime import datetime, timezone, date

def check_in(member_id):
    try: 
        params =config()
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(**params)
        cur = conn.cursor()

        select_query = ''' SELECT account_id, first_name, last_name FROM customers WHERE
        account_id = %s'''
        cur.execute(select_query, (member_id,))
        customer_data = cur.fetchone()

        if customer_data:
            account_id, first_name, last_name = customer_data 

            date_now = date.today().strftime('%Y-%m-%d')
            current_timestamp =datetime.now(timezone.utc)
            insert_query = ''' INSERT INTO check_in(date_timestamp, account_id, first_name, last_name, check_in) VALUES(%s,%s,%s,%s,%s)'''
            cur.execute(insert_query, (date_now, account_id, first_name, last_name, current_timestamp))

                    
        conn.commit()
        count = cur.rowcount
        print(count, "Record inserted successfully into check_in table")

    except (Exception, psycopg2.Error) as error:
        print("Failed to insert record into mobile table", error)

    finally:
    # closing database connection.
        if conn is not None:
            cur.close()
            conn.close()
            print("PostgreSQL connection is closed")    


def check_out(member_id):
    try: 
        params =config()
        print('Connecting to the PostgreSQL database...')
        conn = psycopg2.connect(**params)
        cur = conn.cursor()

        select_query = ''' SELECT account_id, first_name, last_name FROM customers WHERE
        account_id = %s'''
        cur.execute(select_query, (member_id,))
        customer_data = cur.fetchone()

        if customer_data:
            account_id, first_name, last_name = customer_data 

            date_now = date.today().strftime('%Y-%m-%d')
            current_timestamp =datetime.now(timezone.utc)
            insert_query = ''' INSERT INTO check_out(date_timestamp, account_id, first_name, last_name, check_out) VALUES(%s,%s,%s,%s,%s)'''
            cur.execute(insert_query, (date_now, account_id, first_name, last_name, current_timestamp))

                    
        conn.commit()
        count = cur.rowcount
        print(count, "Record inserted successfully into check_out table")

    except (Exception, psycopg2.Error) as error:
        print("Failed to insert record into mobile table", error)

    finally:
    # closing database connection.
        if conn is not None:
            cur.close()
            conn.close()
            print("PostgreSQL connection is closed")          


check_in(4)
check_in(18)
check_in(26)
check_out(4)
check_out(18)
check_out(26)