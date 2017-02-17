void UI(){
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

void instructions(){
  textSize(32); 
  //textSize(128); 
  text("hexDroid", 30, 100); 
  String s = "Tap and hold in any of the four quadrants to control speed (Left) and rotation (Rotation). Press any of the colored squares to add color and change color speed. Tap the Yellow Square to show the instructions."; 
  //textSize(64);
  textSize(16); 
  text(s,120,120,600,2000); 
  text("+",width*.7,20*buff); 
  text("-",width*.7,height/2+20*buff);
  text("+",width*.2,20*buff); 
  text("-",width*.2,height/2+20*buff);
}