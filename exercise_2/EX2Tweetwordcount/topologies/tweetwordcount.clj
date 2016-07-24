(ns tweetwordcount
  (:use     [streamparse.specs])
  (:gen-class))

(defn tweetwordcount [options]
   [
    ;; spout configuration
    {
    "tweet-spout-1" (python-spout-spec
          options
          "spouts.tweets.Tweets"
          ["tweet"]
          :p 1
          )
    "tweet-spout-2" (python-spout-spec
          options
          "spouts.tweets.Tweets"
          ["tweet"]
          :p 1
          )
    "tweet-spout-3" (python-spout-spec
          options
          "spouts.tweets.Tweets"
          ["tweet"]
          :p 1
          )
    }
    {
    ;; bolt configuration 1
    "parse-tweet-bolt-1" (python-bolt-spec
          options
          {"tweet-spout-1" :shuffle
           "tweet-spout-2" :shuffle}
          "bolts.parse.ParseTweet"
          ["word"]
          :p 2
          )
    "parse-tweet-bolt-2" (python-bolt-spec
          options
          {"tweet-spout-1" :shuffle
           "tweet-spout-2" :shuffle
           "tweet-spout-3" :shuffle}
          "bolts.parse.ParseTweet"
          ["word"]
          :p 2
          )
    "parse-tweet-bolt-3" (python-bolt-spec
          options
          {"tweet-spout-3" :shuffle}
          "bolts.parse.ParseTweet"
          ["word"]
          :p 2
          )
    ;; bolt configuration 2
    "count-bolt-1" (python-bolt-spec
          options
          {"parse-tweet-bolt-1" ["word"]
           "parse-tweet-bolt-2" ["word"]
           "parse-tweet-bolt-3" ["word"]}
          "bolts.wordcount.WordCounter"
          ["word" "count"]
          :p 2
          )
    "count-bolt-2" (python-bolt-spec
          options
          {"parse-tweet-bolt-1" ["word"]
           "parse-tweet-bolt-2" ["word"]}
          "bolts.wordcount.WordCounter"
          ["word" "count"]
          :p 2
          )
    }
  ]
)
