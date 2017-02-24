import controlP5.*; 
ControlP5 cp5; 

Slider abc;
Slider def; 

int sliderWidth = 900; 
int sliderHeight = 80; 
//int sliderWidth = 350;
//int sliderHeight = 40; 

int fontSize = 20; 

void GUI(){
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  
  cp5.addSlider("Rotation")
     .setPosition(75,0)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,31.41)
     .setFont(createFont("Veranda",fontSize))
     ;
     
  cp5.addSlider("Speed")
     .setPosition(75,sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,2)
     .setFont(createFont("Veranda",fontSize))
     ;
     
  cp5.addSlider("colorSpeed")
     .setPosition(75,2*sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,12)
     .setFont(createFont("Veranda",fontSize))
     ;
     
     cp5.addButton("Red")
     .setValue(0)
     .setPosition(0,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,0,0))
     .setFont(createFont("Veranda",fontSize))
     ;
     
     cp5.addButton("Green")
     .setValue(0)
     .setPosition(box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,200,0))
     .setFont(createFont("Veranda",fontSize))
     ;
    
     cp5.addButton("Blue")
     .setValue(0)
     .setPosition(2*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,0,200))
     .setFont(createFont("Veranda",fontSize))
     ;
     
     cp5.addButton("Alpha")
     .setValue(0)
     .setPosition(3*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,200))
     .setFont(createFont("Veranda",fontSize))
     ;
     
      cp5.addButton("Mode")
     .setValue(0)
     .setPosition(4*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,0))
     .setFont(createFont("Veranda",fontSize))
     ;
     
     cp5.addButton("Clear")
     .setValue(0)
     .setPosition(5*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(10,10,10))
     .setFont(createFont("Veranda",fontSize))
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

public void Alpha() {
  alpha = !alpha; 
  backClear(); 
}

public void Mode() {
  drawMode += 1;  
  backClear(); 
}

public void Clear() {
  backClear(); 
  redVar = 1; greenVar = 1; blueVar = 1; 
}