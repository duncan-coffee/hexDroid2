float rotateVar, Rotation; 
float fillVar, ColorSpeed; 
float pos, Speed;  
int redVar, blueVar, greenVar; 

boolean alpha; 
boolean grow; 
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
    border1 = height*.14; 
    border2 = height*.125; 
    border3 = width*.33;
    drawMode = 0; pos = 1; 
    Speed = 1; ColorSpeed = 1; 
    redVar = 1; blueVar =1; greenVar = 1; 
}

void vis(){
//Draw the Visualizer    

  //Check the Postion and Set Speed
  if((pos > border)||(pos < -border)){grow = !grow;}
  if(grow == true){pos += Speed;}
    else{pos -=Speed;}

  fillVar += ColorSpeed; 
  fill(abs(sin((fillVar/100)/redVar))*250,
       abs(sin((fillVar/100)/blueVar))*250,
       abs(sin((fillVar/100)/greenVar))*250); 
   
  translate(width/2,height/2);
  rotateVar += Rotation/10; 
  rotate(rotateVar); 
  
  if(drawMode == 1){
    border = border1;  
    ellipse(pos,pos,pos,pos); 
  }
  
  if(drawMode == 2){
    border = border2; 
    ellipse(pos-50,pos-50,pos,pos);
    ellipse(pos,pos,pos+50,pos+50);
    ellipse(pos+50,pos+50,pos,pos);
  }
  
  if(drawMode == 3){
    border = border3; 
     for(int b=2; b<20; b+=3){
   int a=b*2;
    beginShape();
      vertex((pos)*ColorSpeed/12,(pos+a)*ColorSpeed/12);
      vertex((pos+a)*ColorSpeed/12,(pos+b));
      vertex((pos+a)*ColorSpeed/12,pos-a);
      vertex((pos)*ColorSpeed/12,pos-a);
      vertex((pos-a)*ColorSpeed/12,pos-b);
      vertex((pos-a)*ColorSpeed/12,pos+b); 
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