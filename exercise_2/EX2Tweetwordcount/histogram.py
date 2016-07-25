import sys
import psycopg2

if len(sys.argv) == 2:
    valuesMinMax = sys.argv[1].split(',')
    minValue = valuesMinMax[0]
    maxValue = valuesMinMax[1]
    conn = psycopg2.connect(database="Tcount", user="w205", password="", host="localhost", port="5432")
    cur = conn.cursor()
    cur.execute("SELECT word, count from Tweetwordcount WHERE count >= %s AND count <= %s", (minValue, maxValue))
    for pair in cur.fetchall():
        print pair
else:
    print 'Please enter exactly one pair of integers' \
          ' after the program name, in order, and with' \
          ' a comma and no spaces separating them.'

