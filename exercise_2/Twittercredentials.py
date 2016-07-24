import tweepy

consumer_key = "h38CLqQkOOOGF427T18yzQ5W2";
#eg: consumer_key = "YisfFjiodKtojtUvW4MSEcPm";


consumer_secret = "L07KAfd5SzkaBGT3QU4J5eKQwDlsrhJAEdIE7PyzsjvluDqLBd";
#eg: consumer_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token = "370896757-VrGWQ2GSoeuM8W8BsaUguCcSidDTkK33x9tgufDA";
#eg: access_token = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";

access_token_secret = "jvlwPpAeMHSAxEssT0XPftzA5sBOU3VBKMCfMhLdTCWWs";
#eg: access_token_secret = "YisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPmYisfFjiodKtojtUvW4MSEcPm";


auth = tweepy.OAuthHandler(consumer_key, consumer_secret)
auth.set_access_token(access_token, access_token_secret)

api = tweepy.API(auth)



