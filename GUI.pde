import controlP5.*; 
ControlP5 cp5; 

//Toggle Mode
int border = 100; 
//int border = 275; 
int box = 80;
//int box = 180; 

//int sliderWidth = 900; 
//int sliderHeight = 120; 
int sliderWidth = 350;
int sliderHeight = 40; 

int fontSize = 20; 

Textarea myTextarea;

void GUI(){
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  
  PFont pfont = createFont("Veranda",20,true); 
  ControlFont font = new ControlFont(pfont,20);
  
  Group g1 = cp5.addGroup("g1");
  
  cp5.addSlider("Rotation")
     .setPosition(75,0)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,6.666*PI)
     .setFont(font)
     .setGroup(g1)
     ;
     
  cp5.addSlider("Speed")
     .setPosition(75,sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,2)
     .setFont(font)
     .setGroup(g1)
     ;
     
  cp5.addSlider("Color")
     .setPosition(75,2*sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,12)
     .setFont(font)
     .setGroup(g1)
     ;
     
     cp5.addButton("Red")
     .setValue(0)
     .setPosition(0,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,0,0))
     .setFont(font)
     .setGroup(g1)
     ;
     
     cp5.addButton("Green")
     .setValue(0)
     .setPosition(box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,200,0))
     .setFont(font)
     .setGroup(g1)
     ;
    
     cp5.addButton("Blue")
     .setValue(0)
     .setPosition(2*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,0,200))
     .setFont(font)
     .setGroup(g1)
     ;
     
     cp5.addButton("Alpha")
     .setValue(0)
     .setPosition(3*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,200))
     .setFont(font)
     .setGroup(g1)
     ;
     
      cp5.addButton("Mode")
     .setValue(0)
     .setPosition(4*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,0))
     .setFont(font)
     .setGroup(g1)
     ;
     
     cp5.addButton("Clear")
     .setValue(0)
     .setPosition(5*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(10,10,10))
     .setFont(font)
     .setGroup(g1) 
     ;  
     
     cp5.addButton("Save")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(0,0)
     .setSize(75,3*sliderHeight)
     .setColorBackground(color(10,10,10))
     .setFont(font)
     .setBroadcast(true)
     .setGroup(g1)
     ;  
     
     cp5.addBang("bang")
       .setPosition(width/2-25, height-150)
       .setSize(40, 40)
       .setFont(font)
       .setCaptionLabel("Touch Me")
       ;
       
     cp5.addTextlabel("label")
        .setText("hexDroid")
        .setPosition(width/2-75,height/2-100)
        .setColorValue(250)
        .setFont(createFont("Veranda",40,true))
        ;
        
        
  myTextarea = cp5.addTextarea("txt")
                  .setPosition(width/8,25)
                  .setSize(400,200)
                  .setFont(font)
                  .setLineHeight(22)
                  .setColor(color(228))
                  //.setColorBackground(color(100,100,100,50))
                  //.setColorForeground(color(255,100));
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

public void Save() {
  //saveFrame(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_PICTURES).getAbsolutePath() + "/img-####.png");
}

public void bang() {
      state++; 
      println(state);    
      
}