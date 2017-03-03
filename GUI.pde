import controlP5.*; 
ControlP5 cp5; 

//Toggle Mode
int border = 100; 
//int border = 275; 
//int box = 80;
int box = 180; 

int sliderWidth = 925; 
int sliderHeight = 120; 
//int sliderWidth = 350;
//int sliderHeight = 40; 

int fontSize = 40; 

Textarea myTextarea;

void GUI(){
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
  
  PFont pfont = createFont("Veranda",40,true); 
  ControlFont font = new ControlFont(pfont,40);
  
  Group g1 = cp5.addGroup("g1");
  
  cp5.addSlider("Rotation")
     .setPosition(125,0)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,6.666*PI)
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
  cp5.addSlider("Speed")
     .setPosition(125,sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,2)
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
  cp5.addSlider("ColorSpeed")
     .setPosition(125,2*sliderHeight)
     .setSize(sliderWidth,sliderHeight)
     .setRange(0,12)
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
     cp5.addButton("Red")
     .setValue(0)
     .setPosition(0,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,0,100))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("1")
     ;
     
     cp5.addButton("Green")
     .setValue(0)
     .setPosition(box,height-box)
     .setSize(box,box)
     .setColorBackground(color(100,200,0))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("2")
     ;
    
     cp5.addButton("Blue")
     .setValue(0)
     .setPosition(2*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(0,100,200))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("3")
     ;
     
     cp5.addToggle("Alpha")
     .setValue(0)
     .setPosition(3*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,200))
     .setColorActive(color(100,100,100)) 
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
     ;
     
      cp5.addButton("Mode")
     .setValue(0)
     .setPosition(4*box,height-box)
     .setSize(box,box)
     .setColorBackground(color(200,200,0))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("Mode")
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
     .setSize(125,3*sliderHeight)
     .setColorBackground(color(0,100,100))
     .setFont(font)
     .setBroadcast(true)
     .setGroup(g1)
     ;  
     
     cp5.addBang("bang")
       .setPosition(width/2-50,height-400)
       .setSize(120, 120)
       .setFont(font)
       .setCaptionLabel("Next")
       .getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingY(10);
       ;
       
     cp5.addTextlabel("label")
        .setText("hexDroid")
        .setPosition(width/2-150,height/2-200)
        .setColorValue(250)
        .setFont(createFont("Veranda",100,true))
        ;
        
        
  myTextarea = cp5.addTextarea("txt")
                  .setPosition(width/10,50)
                  .setSize(900,800)
                  .setFont(createFont("Veranda",60,true))
                  .setLineHeight(70)
                  .setColor(color(228))
                  ;
                  
}

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
  if(drawMode > 3){
    drawMode = 1;
    backClear(); 
  }
  cp5.getController("Mode").setLabel("Mode " + drawMode); 
}

public void Clear() {
  backClear(); 
  redVar = 1; greenVar = 1; blueVar = 1; 
}

public void Save() {
  saveFrame(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_PICTURES).getAbsolutePath() + "/img-####.png");
}

public void bang() {
      state++; 
      println(state); 
}