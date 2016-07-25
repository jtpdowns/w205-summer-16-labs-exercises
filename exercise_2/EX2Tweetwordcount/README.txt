This Storm application collects live tweets and counts their words, storing the results into a PostgreSQL database.

The system should be configured to use streamparse with Python 2.7, which can be accomplished by following the instructions for Exercise 2 of W205 for the UC Berkeley MIDS program in the Summer of 2016.

To use this, first start the PostgreSQL daemon thread. Then, create a database named Tcount as user w205. Also create a table Tweetwordcount as user w205 whose columns are text (word) and int (count).

Then, from the directory containing this application, type `sparse run`. The database and table will be populated from tweet data. Then, the finalresults.py and histogram.py functions can be used to query the results. 

