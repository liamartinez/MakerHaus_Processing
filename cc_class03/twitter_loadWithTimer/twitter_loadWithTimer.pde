
import twitter4j.*;

import twitter4j.conf.*;

import java.util.List; //java library for arraylists
import java.util.Date; //java library for date

Twitter twitter; 

ArrayList<String> words = new ArrayList();

//for the timer
int interval, startTime; 

void setup() {
  //Set the size of the stage, and the background to black.
  size(1300, 800);
  background(0);
  smooth();
  
  interval = 120; //in frames
  startTime = 0; 

  //Credentials. Make your own at https://dev.twitter.com
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey("1t2sC3580jA76ibuWrRg");
  cb.setOAuthConsumerSecret("wjJMtptKODinuCJEO0wND02xl8ZCovoiwqyinZRuNAY");
  cb.setOAuthAccessToken("2648241-tR55VzA8yYhY4bsnkvbR5JQvs2Gan1jQYAqsmQEL6w");
  cb.setOAuthAccessTokenSecret("8bvudCM80bIB1FODJXjaGjC6giRmCgaTrP0tIjCk6NVvs");

  twitter = new TwitterFactory(cb.build()).getInstance();

}

void draw() {
    if ((frameCount - startTime) > interval) {
      println ("go!");
    getTweets ("halloween");  
    startTime = frameCount; 
  }
  
}

void getTweets(String theWord) {
    Query query = new Query("#" + theWord);

  try {
    QueryResult result = twitter.search(query);
    ArrayList tweets = (ArrayList) result.getTweets();

    for (int i = 0; i < tweets.size(); i++) {
      Status t=(Status) tweets.get(i);
      User u=(User) t.getUser();
      String user=u.getName();
      String msg = t.getText();
      Date d = t.getCreatedAt();
      println("Tweet by " + user + " at " + d + ": " + msg);
      
      String[] input = msg.split(" ");
      for (int j = 0;  j < input.length; j++) {
        //Put each word into the words ArrayList
        words.add(input[j]);
      }
    };
  }
  catch (TwitterException te) {
    println("Couldn't connect: " + te);
  };
}

