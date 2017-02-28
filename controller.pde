int state = 0;
boolean visDraw; 

void controller(){
  
  if(state == 0){
    visDraw = false; 
    cp5.getGroup("g1").hide();
    myTextarea.hide();
    cp5.getController("label").show(); 
  //  state = 0; 
  }
  
  if(state == 1){
   visDraw = true; 
   cp5.getGroup("g1").hide();
   cp5.getController("label").hide();
   myTextarea.show(); 
   myTextarea.setText("Allow yourself a moment to pause and breathe. "
                    +"When you immerse yourself in light and sound the sense of self can slip away.");  
   //state = 0; 
  }
  
  if(state == 2){
    visDraw = true;
    Speed = 0;  
    pos = 100; 
    //cp5.getGroup("g1").show(); 
    myTextarea.setPosition(width/8,height/3);
    myTextarea.setText("Light, color, form, motion, duration - " 
                    +" These are the elements from which you create reality.");
   // state = 0; 
  }
  
  if(state == 3){
    visDraw = true; 
    Speed = 0;  
    pos = 100; 
    cp5.getGroup("g1").show(); 
    myTextarea.setText("Use the buttons and sliders to control hexDroid. "
                    +"Take and share images to amaze yourself and friends.");
  }
  
  if(state == 4){
    myTextarea.setText("Remember, create art responsibly."); 
  }
  
  if(state == 5){
    visDraw = true; 
    cp5.getGroup("g1").show(); 
    cp5.getController("bang").hide(); 
    cp5.getController("label").hide();
    myTextarea.hide(); 
    state = 6; 
  }
  
  if(state>6){
    state = 0; 
  }
                    
}