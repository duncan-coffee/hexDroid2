//HexDroid              //Made with Processing 
//Duncan Harrist 

void setup() {
  fullScreen(P2D); 
  noStroke();
  smooth(); 
  fill(0);
  background(0); 
  orientation(PORTRAIT); 
  visInit(); 
  GUI();      
  mPlayer(); 
  
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