//TODO: Step 2 - Create a new class called Story.

//TODO: Step 3 - Create 3 properties for this class, A. storyTitle to store the story text. B. choice1 to store the text for choice 1, C. choice2 to store the text for choice 2.

//TODO: Step 4 - Create a Constructor for this class to be able to initialise the properties created in step 3.
class Story{
  String sT, ch1, ch2;
  Story({String storyTitle, String choice1, String choice2 }){
    sT = storyTitle;
    ch1 = choice1;
    ch2 = choice2;
  }
}