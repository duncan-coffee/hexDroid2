void sliders(){
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  
  PFont pfont = createFont("Arial", 8, false);
  ControlFont font = new ControlFont(pfont);
  cp5 = new ControlP5(this, font);
  
  cp5.addSlider("Rotation")
     .setPosition(width/2-box,0)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,31.41)
     ;
     
  cp5.addSlider("Speed")
     .setPosition(width/2-box,sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,2)
     ;
     
  cp5.addSlider("colorSpeed")
     .setPosition(width/2-box,2*sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,15)
     ;
     
     cp5.addButton("colorA")
     .setValue(0)
     .setPosition(0,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,0,0))
     ;
     
     cp5.addButton("colorB")
     .setValue(0)
     .setPosition(box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,200,0))
     ;
    
     cp5.addButton("colorC")
     .setValue(0)
     .setPosition(2*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,0,200))
     ;
     
     cp5.addButton("alphaBox")
     .setValue(0)
     .setPosition(3*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,200))
     ;
     
      cp5.addButton("UIBox")
     .setValue(0)
     .setPosition(4*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,0))
     ;
     
     cp5.addButton("Clear")
     .setValue(0)
     .setPosition(5*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(10,10,10))
     ;
     
}

// function colorA will receive changes from 
// controller with name colorA
public void colorA() {
  redVar++; 
}

public void colorB() {
  greenVar++; 
}

public void colorC() {
  blueVar++;  
}

public void alphaBox() {
  alpha = !alpha; 
}

public void UIBox() {
  UI = !UI; 
  println(UI); 
}

public void Clear() {
  backClear(); 
}