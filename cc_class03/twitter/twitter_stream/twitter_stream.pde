
//the .jar files are included in the "code" folder of this sketch. 

import java.util.List; //java library
import java.util.Date; //java library

String keywords[] = {"#cat","#dog", "#parrot", "#fish"}; 
int[] counts = new int [keywords.length]; 


void setup() {
  //Set the size of the stage, and the background to black.
  size(640, 480);
  background(0);
  smooth();
  
  for (int i = 0; i < counts.length; i++) {
  counts[i] = 0; 
}

  //Credentials. Make your own at https://dev.twitter.com
  ConfigurationBuilder cb = new ConfigurationBuilder();
  cb.setOAuthConsumerKey("1t2sC3580jA76ibuWrRg");
  cb.setOAuthConsumerSecret("wjJMtptKODinuCJEO0wND02xl8ZCovoiwqyinZRuNAY");
  cb.setOAuthAccessToken("2648241-tR55VzA8yYhY4bsnkvbR5JQvs2Gan1jQYAqsmQEL6w");
  cb.setOAuthAccessTokenSecret("8bvudCM80bIB1FODJXjaGjC6giRmCgaTrP0tIjCk6NVvs");

  StatusListener listener = new StatusListener() {
    public void onStallWarning(StallWarning warning) {}
    public void onScrubGeo(long userId, long upToStatusId) {}
    
    public void onStatus(Status status) {
      User user = status.getUser();

      String username = status.getUser().getScreenName();
      System.out.println(username);
      String profileLocation = user.getLocation();
      System.out.println(profileLocation);
      long tweetId = status.getId(); 
      System.out.println(tweetId);
      String content = status.getText();
      System.out.println(content +"\n");

            //lets count the number of times the words that we like appear
      String[] input = content.split(" ");
      for (int i = 0; i < keywords.length; i++) {
        for (int j = 0;  j < input.length; j++) {
          if (keywords[i].equals(input[j])) {
            counts[i] ++;
          }
        }
      }
    }

    public void onDeletionNotice(StatusDeletionNotice statusDeletionNotice) {}
    public void onException(Exception ex) {}
    public void onTrackLimitationNotice(int numberOfLimitedStatuses) {}
  }; 
  
  
  TwitterStream ts = new TwitterStreamFactory(cb.build()).getInstance();

  ts.addListener(listener);                                           
  ts.filter(new FilterQuery().track(keywords));              
}

void draw() {
  background (0); 
  
  for (int i = 0; i < keywords.length; i++) {
  ellipse ((width/keywords.length * i) + ((width/keywords.length)/2), height/2, counts[i] * 10, counts[i] * 10); 
  textAlign (CENTER); 
  text (keywords[i], (width/keywords.length * i) + ((width/keywords.length)/2), 50); 
  }
}

