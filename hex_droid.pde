//HexDroid
//Duncan Harrist 

/////Import Media Player
//import android.media.MediaPlayer;
//import android.content.res.AssetFileDescriptor;
//import android.content.Context;
//import android.app.Activity;

//MediaPlayer mp;
//Context context; 
//Activity act;
//AssetFileDescriptor afd;
/////////////////

import controlP5.*; 

ControlP5 cp5; 
int myColor = color(0,0,0); 

int sliderValue = 100; 
Slider abc; 

/////////////////
PGraphics pg; 

float rotateVar = 0, rotateTemp = 0; 
float fillVar = 0, fillTemp = 1; 
float pos = 10, speed = .4; 
int redVar = 1, blueVar = 1, greenVar = 1; 

//Toggle Mode
int border = 115; 
//int border = 275; 
int colorBox = 60; 
//int colorBox = 150;

int m, m2; 
int alphaTime, UITime; 
boolean coolDown = false; 
int box = 60; 
int buff = 7; 
boolean alpha = true; 
boolean UI = true; 
boolean grow = true; 
boolean vis = true;
int clickCount = 0; 

void setup() {
  
  //Toggle Mode
  //fullScreen();
  size(480,640); 
  
  pg = createGraphics(400,200); 
  noStroke();
  smooth(); 
  fill(0);
  background(0); 
  
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  cp5.addSlider("sliderValue")
     .setPosition(100,50)
     .setRange(0,255)
     ;
     
     
  //mPlayer(); 
  //println(21%20); 
  
}

void draw() {
  
  controller(); 
  
//Draw the User Interface
  if(UI == true){
    UI(); 
    instructions(); 
    //cp5.draw();
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
  if(vis == true){
  vis(); 
  }
//println(mouseX, mouseY); 

}

void controller(){
  UI = true; 
  vis = false; 
  
}