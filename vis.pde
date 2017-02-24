float rotateVar = 0, Rotation; 
float fillVar = 0, colorSpeed = 1; 
float pos = 10, Speed = 1;  
int redVar = 0, blueVar = 0, greenVar = 0; 

int drawMode = 0; 

void vis(){
//Draw the Visualizer    

  //Check the Postion and Set Speed
  if((pos > border)||(pos < -border)){grow = !grow;}
  if(grow == true){pos += Speed;}
    else{pos -=Speed;}

  //Fill Color
  fillVar += colorSpeed; 
  fill(abs(sin((fillVar/100)/redVar))*250,
       abs(sin((fillVar/100)/blueVar))*250,
       abs(sin((fillVar/100)/greenVar))*250); 
  //Translate
  translate(width/2,height/2);
  //Rotate
  rotateVar += Rotation/10; 
  rotate(rotateVar); 
  //Draw Ellipse
  
  if(drawMode == 1){
    //border = 100; 
    border = 250; 
    ellipse(pos,pos,pos,pos); 
  }
  
  if(drawMode == 2){
    //border = 100;
    border = 250; 
    ellipse(pos-50,pos-50,pos,pos);
    ellipse(pos,pos,pos+50,pos+50);
    ellipse(pos+50,pos+50,pos,pos);
  }
  
  if(drawMode == 3){
    //border = 150;
    border = 400; 
     for(int b=2; b<20; b+=3){
   int a=b*2;
    beginShape();
      vertex((pos)*colorSpeed/10,(pos+a)*colorSpeed/10);
      vertex((pos+a)*colorSpeed/10,(pos+b));
      vertex((pos+a)*colorSpeed/10,pos-a);
      vertex((pos)*colorSpeed/10,pos-a);
      vertex((pos-a)*colorSpeed/10,pos-b);
      vertex((pos-a)*colorSpeed/10,pos+b); 
    endShape(CLOSE);
   }
  }
  
  if(drawMode > 3){
    drawMode = 1;
    backClear(); 
  }
//End of Visualizer 

}