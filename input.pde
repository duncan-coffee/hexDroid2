void mousePressed(){
//Check the Mouse for Events
   
     //Check Top Right
  if((mouseX<(width))&&(mouseX > (width/2))&&
     (mouseY<(height/2))&&(mouseY > (0))
     ){rotateTemp += .005;} //Modify Rotate Speed
     
  //Check Bottom Right
  if((mouseX<(width))&&(mouseX > (width/2))&&
     (mouseY<(height-colorBox))&&(mouseY > (height/2))
     ){rotateTemp -= .005;} //Modify Rotate Speed
     
  //Check Top Left
   if((mouseX<(width/2))&&(mouseX > (0))&&
     (mouseY<(height/2))&&(mouseY > (0))
     ){speed += .02;}//Modify Circle Speed
    
  //Check Bottom Left
  if((mouseX<(width/2))&&(mouseX > (0))&&
     (mouseY<(height-colorBox))&&(mouseY > (height/2))
     ){speed -= .02;}//Modify Circle Speed
    
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
     ){fillTemp += 1;println(fillTemp);}  
     
   //Check the -Fill Box
  if((mouseX<(5*colorBox+5*buff))&&(mouseX > (4*colorBox+5*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){fillTemp -= 1;}  
     
     //Check the Alpha Box
  if((mouseX<(6*colorBox+6*buff))&&(mouseX > (5*colorBox+6*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){
       m = millis(); 
       
       if (m-alphaTime>1000){
         coolDown=false;
       }
       if(coolDown == false){
         alpha = !alpha;println("alpha");
         coolDown = true; 
         alphaTime = millis(); 
       }
       
      }
     
   //Check the User Interface Box
  if((mouseX<(7*colorBox+7*buff))&&(mouseX > (6*colorBox+7*buff))&&
     (mouseY<(height))&&(mouseY > (height-colorBox))
     ){
       m2 = millis(); 
       
       if(m2-UITime>1000){
         coolDown=false;
       }
       if(coolDown == false){
         UI = !UI; backClear();println("UI"); 
         coolDown = true; 
         UITime = millis(); 
       }
       
      }  
}

void mouseClicked(){
//Check the Mouse for a Click
println("click"); 
}