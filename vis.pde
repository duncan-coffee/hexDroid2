float rotateVar = 0, Rotation; 
float fillVar = 0, colorSpeed = 1; 
float pos = 10, Speed;  
int redVar = 0, blueVar = 0, greenVar = 0; 

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
  //ellipse(pos-50,pos-50,pos,pos);
  //ellipse(pos,pos,pos+50,pos+50);
  //ellipse(pos+50,pos+50,pos,pos);
  ellipse(pos,pos,pos,pos); 
//End of Visualizer 

}