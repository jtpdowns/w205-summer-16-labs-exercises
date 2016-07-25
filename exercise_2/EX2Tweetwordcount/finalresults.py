import sys
import psycopg2

conn = psycopg2.connect(database="Tcount", user="w205", password="", host="localhost", port="5432")
cur = conn.cursor()

if len(sys.argv) == 1:
    try:
        cur.execute("SELECT word, count from Tweetwordcount ORDER BY word")
        print curr.fetchall()
    except Exception, e:
        pass
elif len(sys.argv) == 2:
    word = sys.argv[1]
    try:
        cur.execute("SELECT word, count from Tweetwordcount WHERE word=%s", (word))
        count = cur.fetchone()[1]
        print 'Total number of occurrences of %s: %d' % (word, count)
    except Exception, e:
        print 'Total number of occurrences of %s: 0' % (word)
else:
    print 'Please enter 0 or 1 arguments after the program name.'

