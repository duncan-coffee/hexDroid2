//HexDroid              //Made with Processing 
//Duncan Harrist    ///This is a test

void setup() {
  //fullScreen(P2D);
  
  size(1200,800); 
  pixelDensity(displayDensity());
  noStroke();
  smooth(); 
  fill(0);
  background(0); 
  //orientation(PORTRAIT); 
  visInit(); 
  GUI();      
  //mPlayer(); 
}

void draw() {
//Instigate Controller 
controller();  

//Draw the GUI 
   cp5.draw();
  
//Draw Transparency Layer  
  if(alpha){opacity();}
   
//Draw the Visualizer 
if (visDraw){vis();}

}