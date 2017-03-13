float rotateVar, Rotation; 
float fillVar, ColorSpeed; 
float posX, posY, Speed;  
int redVar, blueVar, greenVar; 

boolean alpha; 
boolean growX = true, growY = true; 
boolean GUI;

int drawMode;
float borderX, borderY; 
float border1;
float border2;
float border3;

void visInit(){
    alpha = false; 
    growX = true; growY = true; 
    GUI = false; 
    borderX = 1; 
    borderY = 1; 
    border1 = width*.28; 
    border2 = height*.125; 
    border3 = width*.33;
    drawMode = 0; posX = 1; posY = 1; 
    Speed = 1; ColorSpeed = 1; 
    redVar = 1; blueVar =1; greenVar = 1; 
}

void vis(){
//Draw the Visualizer    

  //Check the Postion and Set Speed
  if((posX > borderX)||(posX < -borderX)){growX = !growX;}
  if(growX == true){posX += Speed*2;}
    else{posX -=Speed*2;}
    
    if((posY > borderY)||(posY < -borderY)){growY = !growY;}
  if(growY == true){posY += Speed;}
    else {posY -=Speed;}

  fillVar += ColorSpeed; 
  fill(abs(sin((fillVar/100)/redVar))*250,
       abs(sin((fillVar/100)/greenVar))*250,
       abs(sin((fillVar/100)/blueVar))*250); 
   
  translate(width/2,height/2);
  rotateVar += Rotation/10; 
  rotate(rotateVar); 
  
  if(drawMode == 1){
    borderX = border1; 
    borderY = border2;
    ellipse(posX,posY,posX*.25,posY*.5); 
    ellipse(posX*.2,posY*.2,posX*.25,posY*.25); 
  }
  
  if(drawMode == 2){
    borderX = border1; 
    borderY = border1; 
    ellipse(posX-50,posY-50,posX,posX);
    ellipse(posX,posX,posX+10,posX+10);
    ellipse(posX+50,posY+50,posX,posX);
  }
  
  if(drawMode == 3){
    borderX = border3; 
     for(int b=2; b<20; b+=3){
   int a=b*2;
    beginShape();
      vertex((posX)*ColorSpeed/12,(posX+a)*ColorSpeed/12);
      vertex((posX+a)*ColorSpeed/12,(posX+b));
      vertex((posX+a)*ColorSpeed/12,posX-a);
      vertex((posX)*ColorSpeed/12,posX-a);
      vertex((posX-a)*ColorSpeed/12,posX-b);
      vertex((posX-a)*ColorSpeed/12,posX+b); 
    endShape(CLOSE);
   }
  }
  
//End of Visualizer 
}

void opacity(){
  //Draw Transparency Layer
    fill(abs(sin(fillVar/redVar))*100,
         abs(sin(fillVar/blueVar))*100,
         abs(sin(fillVar/greenVar))*100,3); 
    rect(0, 0, width, height);
  //End of Trasparency Layer
}

void backClear(){
//Redraw the Background
  background(abs(sin(fillVar/redVar))*250-100,
             abs(sin(fillVar/blueVar))*250-100,
             abs(sin(fillVar/greenVar))*250-100,150);
}