// Contains the starting, or intial, word (axiom)
String axiom = "F+F";

//Contains the new word
String word = ""; 

// Will contain all the rules that apply for this L-system
StringDict rules; 

// This function runs once.
void setup() {
  
  // Create the canvas
  size(800, 600);
  
  // White background
  background(255, 255, 255);
  
  // Black text
  fill(0, 0, 0);
  
  // Set text size
  textSize(24);
  
  //Slow down to refresh rate 
  frameRate(1); 
  
  //Create the string dictionary object 
  //"Using the StringDict class, create a new StringDict object, names 'rules'"
  rules = new StringDict(); 
  
  //Add rules (key-value pairs) 
  //         key     value
  rules.set("F", "F-F");
  
    
}

// This function runs repeatedly ( unless we stop it with noLoop() )
void draw() {
  
  //Re-paint the background 
  background(255,255,255); //white 
  
    // Print text to the screen
  // Arguments:
  //   string, x, y
  text("The axiom is: " + axiom, 0, 100);
  
  //Show what fram is being displayed 
  text("Current frame is: " + frameCount, 0, 200); 
  
  //Check each character - if it matches a rule, replace it 
  if ( axiom.charAt(frameCount - 1) == 'F')  {
    //replace
    word += rules.get("F"); 
  } else {
    //copy the character directly 
    word += axiom.charAt(frameCount - 1);
  }
  
  //Print the new word
  text("Current word is: " + word, 0, 300); 
  
  //Stop before we go out of bounds... past the end of the string
  if (frameCount == axiom.length() ) {
   noLoop();   
  }

  
}
