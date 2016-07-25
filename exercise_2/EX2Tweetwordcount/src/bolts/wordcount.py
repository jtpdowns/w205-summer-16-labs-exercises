from __future__ import absolute_import, print_function, unicode_literals

from collections import Counter
from streamparse.bolt import Bolt
# import psycopg2


class WordCounter(Bolt):

    def initialize(self, conf, ctx):
        self.counts = Counter()
        # self.redis = StrictRedis()

    def process(self, tup):
        word = tup.values[0]

        # Write codes to increment the word count in Postgres
        # Use psycopg to interact with Postgres
        # Database name: Tcount 
        # Table name: Tweetwordcount 
        # you need to create both the database and the table in advance.
        # conn = psycopg2.connect(database="Tcount", user="postgres", password="", host="localhost", port="5432")
        # try:
        # cur.execute("SELECT word, count from Tweetwordcount WHERE word=%s", (word))
        # currentCount = cur.fetchone()[1]
        # cur.execute("UPDATE Tweetwordcount SET count=%s WHERE word=%s", (currentCount+1, word))
        # conn.commit()
        # except Exception, e:
        # cur.execute("INSERT INTO Tweetwordcount (word, count) \
        #     VALUES (%s, 1)", (word));
        # conn.commit()

        # Increment the local count
        self.counts[word] += 1
        self.emit([word, self.counts[word]])

        # Log the count - just to see the topology running
        self.log('%s: %d' % (word, self.counts[word]))
