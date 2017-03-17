float rotateVar, Rotation; 
float fillVar, ColorSpeed; 
float position, Speed;  
int redVar, blueVar, greenVar; 

boolean alpha; 
boolean grow = true; 
boolean GUI;

int drawMode;
float border;
float border1;
float border2;
float border3;

void visInit(){
    alpha = false; 
    grow = true; 
    GUI = false; 
    border = 1; 
    border1 = width*.25; 
    border2 = height*.125; 
    border3 = width*.33;
    drawMode = 0; position = 1; 
    Speed = 1; ColorSpeed = 1; 
    redVar = 1; blueVar =1; greenVar = 1; 
}

void vis(){
//Draw the Visualizer    

  //Check the Postion and Set Speed
  if((position > border)||(position < -border)){grow = !grow;}
  if(grow == true){position += Speed;}
    else{position -=Speed;}
    
  fillVar += ColorSpeed; 
  fill(abs(sin((fillVar/100)/redVar))*250,
       abs(sin((fillVar/100)/greenVar))*250,
       abs(sin((fillVar/100)/blueVar))*250); 
   
  translate(width*.5,height*.5);
  rotateVar += Rotation; 
  rotate(rotateVar); 
  
  if(drawMode == 1){
    border = border1; 
    ellipse(position,position,position,position); 
  }
  
  if(drawMode == 2){
    border = border2; 
    ellipse(position-50,position-50,position,position);
    ellipse(position,position,position+50,position+50);
    ellipse(position+50,position+50,position,position);
  }
  
  if(drawMode == 3){
    border = border3; 
     for(int b=2; b<20; b+=3){
   int a=b*2;
    beginShape();
      vertex((position)*ColorSpeed/12,(position+a)*ColorSpeed/12);
      vertex((position+a)*ColorSpeed/12,(position+b));
      vertex((position+a)*ColorSpeed/12,position-a);
      vertex((position)*ColorSpeed/12,position-a);
      vertex((position-a)*ColorSpeed/12,position-b);
      vertex((position-a)*ColorSpeed/12,position+b); 
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