int state = 0;
boolean visDraw; 
int t1, t2; 
boolean startTimer2 = true; 
boolean Create = false; 
boolean startTimer = true;

void controller(){
  
//Title Screen
  if(state == 0){
    visDraw = false; 
    cp5.getGroup("g1").hide();
    myTextarea.hide();
    cp5.getController("label").show(); 
    cp5.getController("bang").show();
    cp5.getController("bang2").show(); 
    cp5.getController("bang").setLabel("Create"); 
    cp5.getController("bang").setPosition(width*.25,height*.75); 
  }
  
//Create Mode
//Instructions 
   if(state == 1){
    Create = true; 
    visDraw = true; 
    cp5.getController("bang").hide(); 
    cp5.getController("bang2").hide(); 
    cp5.getController("label").hide();
    cp5.getController("Mute").hide(); 
    cp5.getController("ColorSpeed").setValue(1);
    pos = 20; 
    Speed = 0;  Rotation = 0; 
    redVar = 1; greenVar = 1; blueVar = 1;
    cp5.getGroup("g1").show(); 
    
     if (startTimer){
      t1 = millis()/1000;
      startTimer = false; 
    }
    
    t2 = millis()/1000;
    if(t2-t1 > 3){  
      myTextarea.show(); 
      myTextarea.setPosition(width*.125,height*.3);
      myTextarea.setText("Use the sliders above to control Rotation, Speed, and Color change Speed."); 
      triangle(width/2,height/3-200,width/2+100,height/3-100,width/2-100,height/3-100); //Top Triangle
    }
    
    if(t2-t1 > 14){
      myTextarea.setPosition(width*.125,height*.45);
      myTextarea.setText("Hit 'Save' to capture images."); 
    }
    
    if(t2-t1 > 22){
      myTextarea.setPosition(width*.125,height*.55);
      myTextarea.setText("Use the buttons below to add Color, toggle transparency (Alpha), change the Mode, and Clear the color pallet."); 
      triangle(width/2,2*height/3+300,width/2+100,2*height/3+200,width/2-100,2*height/3+200);  //Bottom Triangle
    }
    
    if(t2-t1 > 36){
      state++; 
    }
    
  }
//Main Screen 
   if(state == 2){
    visDraw = true; 
    cp5.getGroup("g1").show(); 
    cp5.getController("bang").hide(); 
    cp5.getController("label").hide();
    myTextarea.hide(); 
    cp5.getController("Rotation").setValue(0.02); 
    cp5.getController("Speed").setValue(1);
    state++; 
  }

//Relax Mode
  if(state == 11){
   Create = false; 
   visDraw = true; 
   cp5.getGroup("g1").hide();
   cp5.getController("bang").hide();
   cp5.getController("bang2").hide(); 
   cp5.getController("label").hide();
   cp5.getController("Mute").hide();
   myTextarea.show(); 
   
   
   
   if (startTimer2){
      t1 = millis()/1000;
      startTimer2 = false; 
    }
    
   t2 = millis()/1000;
    
   if(t2-t1 > 4){
     myTextarea.setText("Allow yourself a moment to pause and breathe. "
                    +"When you are immersed in light and sound stress and worry can dissolve.");
    }
   if(t2-t1 > 18){
    myTextarea.setText("What do you notice about your immediate environment? " 
                    +"What can you see, hear, smell, touch, and taste? " + "Be present. ");
    visDraw = true; 
    Rotation = PI*6.666; 
    Speed = 1; 
   }
   
   if(t2-t1 >30){
    Speed = .8;  
    Rotation = PI*3.333;
    redVar = 10; greenVar = 2; blueVar = 3; 
    myTextarea.show();
    myTextarea.setText("Light, color, form, motion, duration — " 
                    +" these are the elements from which you create reality.");
    
   }
   
   if(t2-t1 > 48){
    myTextarea.setPosition(width/4,height/10);
    myTextarea.setText("Remember, create art responsibly."); 
    Speed = .8; 
    ColorSpeed = 10; 
    redVar = 2; greenVar = 5; 
    Rotation = 9.19;  
   }
     
   if(t2-t1 > 58){
     state = 0; 
   }
     
  }
  
                    
}