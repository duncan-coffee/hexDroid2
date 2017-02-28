//HexDroid
//Duncan Harrist 

boolean alpha = false; 
boolean grow = true; 
boolean GUI = false; 

void setup() {
  //Toggle Mode
  //fullScreen(P2D);
  size(480,640); 
  noStroke();
  smooth(); 
  fill(0);
  background(0); 
  GUI();      
  //mPlayer(); 
}

void draw() {

controller(); 
  
//Draw the GUI 
   cp5.draw();
   
//Draw Transparency Layer  
  if(alpha){opacity();}
   
//Draw the Visualizer 
if (visDraw){vis();}

}