/*
example from Jer Thorp's tutorial: http://blog.blprnt.com/blog/blprnt/updated-quick-tutorial-processing-twitter
 and modified by: http://omgcake.wordpress.com/2013/03/07/processing-and-twitter/
 */


import java.util.List; //java library
import java.util.Date; //java library

ArrayList<String> words = new ArrayList();

void setup() {
  //Set the size of the stage, and the background to black.
  size(1300, 800);
  background(0);
  smooth();

  //Credentials. Make your own at https://dev.twitter.com
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey("1t2sC3580jA76ibuWrRg");
  cb.setOAuthConsumerSecret("wjJMtptKODinuCJEO0wND02xl8ZCovoiwqyinZRuNAY");
  cb.setOAuthAccessToken("2648241-tR55VzA8yYhY4bsnkvbR5JQvs2Gan1jQYAqsmQEL6w");
  cb.setOAuthAccessTokenSecret("8bvudCM80bIB1FODJXjaGjC6giRmCgaTrP0tIjCk6NVvs");

  Twitter twitter = new TwitterFactory(cb.build()).getInstance();
  Query query = new Query("#halloween");
  query.setCount (20); //this defaults to 15 

  try {
    QueryResult result = twitter.search(query);
    ArrayList tweets = (ArrayList) result.getTweets();

    println ("SIZE: " + result.getCount()); 

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

void draw() {
  //Draw a faint black rectangle over what is currently on the stage so it fades over time.
  fill(0, 1);
  rect(0, 0, width, height);

  //Draw a word from the list of words that we've built
  int i = (frameCount % words.size());
  String word = words.get(i);

  //Put it somewhere random on the stage, with a random size and colour
  fill(255, random(50, 150));
  textSize(random(10, 30));
  text(word, random(width), random(height));
  
  
}

