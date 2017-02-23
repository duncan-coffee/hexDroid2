import controlP5.*; 
ControlP5 cp5; 

Slider abc;
Slider def; 

//int sliderWidth = 900; 
//int sliderHeight = 80; 
int sliderWidth = 350;
int sliderHeight = 40; 

void GUI(){
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  
  cp5.addSlider("Rotation")
     .setPosition(75,0)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,31.41)
     ;
     
  cp5.addSlider("Speed")
     .setPosition(75,sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,2)
     ;
     
  cp5.addSlider("colorSpeed")
     .setPosition(75,2*sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,15)
     ;
     
     cp5.addButton("Red")
     .setValue(0)
     .setPosition(0,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,0,0))
     ;
     
     cp5.addButton("Green")
     .setValue(0)
     .setPosition(box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,200,0))
     ;
    
     cp5.addButton("Blue")
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
public void Red() {
  redVar++; 
  backClear(); 
}

public void Green() {
  greenVar++; 
  backClear(); 
}

public void Blue() {
  blueVar++;  
  backClear(); 
}

public void alphaBox() {
  alpha = !alpha; 
  backClear(); 
}

public void UIBox() {
  GUI = !GUI;  
}

public void Clear() {
  backClear(); 
}