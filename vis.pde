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
             abs(sin(fillVar/greenVar))*250-100);
}