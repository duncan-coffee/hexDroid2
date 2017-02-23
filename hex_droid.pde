//HexDroid
//Duncan Harrist 

///////Import Media Player
import android.media.MediaPlayer;
import android.content.res.AssetFileDescriptor;
import android.content.Context;
import android.app.Activity;

MediaPlayer mp;
Context context; 
Activity act;
AssetFileDescriptor afd;
/////////////////

import controlP5.*; 

ControlP5 cp5; 

float Rotation; 
Slider abc; 
float Speed; 
Slider def; 

int sliderWidth = 900; 
int sliderHeight = 80; 

/////////////////
PGraphics pg; 

float rotateVar = 0, rotateTemp = 0; 
float fillVar = 0, fillTemp = 1; 
float colorSpeed = 1; 
float pos = 10; //speed = .4; 
int redVar = 0, blueVar = 0, greenVar = 0; 

//Toggle Mode
//int border = 115; 
int border = 275; 
int colorBox = 60; 
//int colorBox = 150;

int m, m2; 
int alphaTime, UITime; 
boolean coolDown = false; 
//int box = 80;
int box = 200; 
int buff = 7; 
boolean alpha = false; 
boolean UI = false; 
boolean grow = true; 

void setup() {
  
  //Toggle Mode
  fullScreen(P2D);
  //size(480,640); 
  
  pg = createGraphics(400,200); 
  noStroke();
  smooth(); 
  fill(0);
  background(0); 
  
  sliders(); 
     
  mPlayer(); 
  //println(21%20); 
  
}

void draw() {
//Draw the User Interface
  if(UI == true){
    //UI(); 
    //instructions(); 
    cp5.draw();
  }
  
  
//Draw Transparency Layer  
  if(alpha == true){
     opacity(); 
   }
//Check the Mouse
 if(mousePressed){
   // mousePressed(); 
  }
//Draw the Visualizer 
  vis(); 
//println(mouseX, mouseY); 

}