package processing.test.hex_droid;

import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import android.media.MediaPlayer; 
import android.content.res.AssetFileDescriptor; 
import android.content.Context; 
import android.app.Activity; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class hex_droid extends PApplet {

//HexDroid
//Duncan Harrist 

/////Import Media Player





MediaPlayer mp;
Context context; 
Activity act;
AssetFileDescriptor afd;
/////////////////
PGraphics pg; 

float rotateVar = 0, rotateTemp = 0; 
float fillVar = 0, fillTemp = .01f; 
float pos = 10, speed = .4f; 
int redVar = 1, blueVar = 1, greenVar = 1; 

//Toggle Mode
//int border = 115; 
int border = 275; 
//int colorBox = 60; 
int colorBox = 150;

int m; 
boolean coolDown = false; 
int box = 60; 
int buff = 7; 
boolean alpha = true; 
boolean UI = true; 
boolean grow = true; 

public void setup() {
  
  //Toggle Mode
  
  //size(480,640); 
  
  pg = createGraphics(400,200); 
  noStroke();
   
  fill(0);
  background(0); 
  
  mPlayer(); 
  
}

public void draw() {
//Draw the User Interface
  if(UI == true){
    UI(); 
    instructions(); 
  }
//Draw Transparency Layer  
  if(alpha == true){
     opacity(); 
   }
//Check the Mouse
 if(mousePressed){
    mousePressed(); 
  }
//Draw the Visualizer 
  vis(); 
//println(mouseX, mouseY); 
}
public void UI(){
//Draw the User Interface  
  pg.beginDraw(); 
  noFill(); 
  
  //Draw Color Boxes 
  strokeWeight(7);
  stroke(200,0,120,1);  //Red
  rect(buff,height-colorBox,colorBox,colorBox);
  stroke(10,200,0,1);   //Green
  rect(colorBox+2*buff,height-colorBox,colorBox,colorBox); 
  stroke(0,100,200,1);  //Blue
  rect(2*colorBox+3*buff,height-colorBox,colorBox,colorBox); 
  
  //Draw Fill Boxes
  stroke(0,200,200,1); 
  rect(3*colorBox+4*buff,height-colorBox,colorBox,colorBox); 
  stroke(200,0,200,1); 
  rect(4*colorBox+5*buff,height-colorBox,colorBox,colorBox);
  
  //Draw Alpha Box
  stroke(200,200,200,1); 
  rect(5*colorBox+6*buff,height-colorBox,colorBox,colorBox);
  
  //Draw the User Interface Box
  stroke(200,200,0,1); 
  rect(6*colorBox+7*buff,height-colorBox,colorBox,colorBox);
  
  //Draw Quads
  strokeWeight(2); 
  stroke(130,130,130,1); 
  line(width/2,0,width/2,height-(colorBox+buff)); 
  line(0,height/2,width,height/2); 
  
  noStroke(); 
  pg.endDraw(); 
  image(pg, 120, 60);  
  //End of User Interface
}

public void instructions(){
  //textSize(32); 
  textSize(128); 
  text("hexDroid", 30, 100); 
  String s = "Tap and hold in any of the four quadrants to control speed (Left) and rotation (Rotation). Press any of the colored squares to add color and change color speed. Tap the Yellow Square to show the instructions."; 
  textSize(64);
  //textSize(16); 
  text(s,120,120,600,2000); 
}
public void mousePressed(){
//Check the Mouse for Events
   
     //Check Top Right
  if((mouseX<(width))&&(mouseX > (width/2))&&
     (mouseY<(height/2))&&(mouseY > (0))
     ){rotateTemp += .005f;} //Modify Rotate Speed
     
  //Check Bottom Right
  if((mouseX<(width))&&(mouseX > (width/2))&&
     (mouseY<(height-colorBox))&&(mouseY > (height/2))
     ){rotateTemp -= .005f;} //Modify Rotate Speed
     
  //Check Top Left
   if((mouseX<(width/2))&&(mouseX > (0))&&
     (mouseY<(height/2))&&(mouseY > (0))
     ){speed += .02f;}//Modify Circle Speed
    
  //Check Bottom Left
  if((mouseX<(width/2))&&(mouseX > (0))&&
     (mouseY<(height-colorBox))&&(mouseY > (height/2))
     ){speed -= .02f;}//Modify Circle Speed
    
  //Check Center Box
  if((mouseX<(width/2 + box))&&(mouseX > (width/2 - box))&&
     (mouseY<(height/2 +box))&&(mouseY > (height/2 -box))
     ){backClear();} 
     
  //Check the Red Box
  if((mouseX<(colorBox+buff))&&(mouseX > (buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){redVar++;println("red");}  
     
  //Check the Green Box   
  if((mouseX<(2*colorBox+2*buff))&&(mouseX > (colorBox+buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){greenVar++;println("green");}
     
  //Check the Blue Box
  if((mouseX<(3*colorBox+3*buff))&&(mouseX > (2*colorBox+3*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){blueVar++;println("blue");}
     
   //Check the +Fill Box
  if((mouseX<(4*colorBox+4*buff))&&(mouseX > (3*colorBox+4*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){fillTemp += .005f;}  
     
   //Check the -Fill Box
  if((mouseX<(5*colorBox+5*buff))&&(mouseX > (4*colorBox+5*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){fillTemp -= .005f;}  
     
     //Check the Alpha Box
  if((mouseX<(6*colorBox+6*buff))&&(mouseX > (5*colorBox+6*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){
       
       
       if(coolDown == false){
         alpha = !alpha;println("alpha");
       }
       
      }
     
   //Check the User Interface Box
  if((mouseX<(7*colorBox+7*buff))&&(mouseX > (6*colorBox+7*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){UI = !UI; backClear();println("UI"); }  
}

public void mouseClicked(){
//Check the Mouse for a Click
println("click"); 
}
public void mPlayer(){

//Initialize Media Player
  act = this.getActivity();
  context = act.getApplicationContext();
  try {
    mp = new MediaPlayer();
    afd = context.getAssets().openFd("hex6.mp3");//which is in the data folder
    mp.setDataSource(afd.getFileDescriptor());
    mp.prepare();
 } 
 catch(IOException e) {
   println("file did not load");
 }
  
  mp.start();
  mp.setLooping(true);


  //End of Media Player 
}
public void vis(){
//Draw the Visualizer    

  //Check the Postion and Set Speed
  if((pos > border)||(pos < -border)){grow = !grow;}
  if(grow == true){pos += speed;}
    else{pos -=speed;}

  //Fill Color
  fillVar += fillTemp; 
  fill(abs(sin(fillVar/redVar))*250,
       abs(sin(fillVar/blueVar))*250,
       abs(sin(fillVar/greenVar))*250); 
  //Translate
  translate(width/2,height/2);
  //Rotate
  rotateVar += rotateTemp; 
  rotate(rotateVar); 
  //Draw Ellipse
  ellipse(pos-50,pos-50,pos,pos);
  ellipse(pos,pos,pos+100,pos+100);
  ellipse(pos+50,pos+50,pos,pos);
//End of Visualizer 


}

public void opacity(){
  //Draw Transparency Layer
    fill(abs(sin(fillVar/redVar))*100,
         abs(sin(fillVar/blueVar))*100,
         abs(sin(fillVar/greenVar))*100,2); 
    rect(0, 0, width, height);
  //End of Trasparency Layer
}

public void backClear(){
//Redraw the Background
  background(abs(sin(fillVar/redVar))*250-100,
             abs(sin(fillVar/blueVar))*250-100,
             abs(sin(fillVar/greenVar))*250-100);
}
  public void settings() {  fullScreen();  smooth(); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "hex_droid" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
