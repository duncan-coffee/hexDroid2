import controlP5.*; 
ControlP5 cp5; 

Textarea myTextarea;

int boxSide;
int sliderHorizonWidth;
int sliderHorizonHeight;
int saveWidth; 
int sliderVertWidth; 
int sliderVertHeight; 

void GUI(){
  
  cp5 = new ControlP5(this); 
  cp5.setAutoDraw(false);
 
  PFont pfont = createFont("Veranda",50,true); 
  //ControlFont font = new ControlFont(pfont,50);
  ControlFont font = new ControlFont(pfont,20);
  
  Group g1 = cp5.addGroup("g1");
  
  boxSide = int(width/18); 
  sliderHorizonWidth = int(width*.48); 
  sliderHorizonHeight = int(height/22); 
  saveWidth = int(width*.116); 
  sliderVertWidth = boxSide; 
  sliderVertHeight = int(width*.25); 
 
//Control Sliders - Horizontal 
  cp5.addSlider("Rotation")
     .setPosition(125,0)
     .setSize(sliderHorizonWidth,sliderHorizonHeight)
     .setRange(0,6.666*PI)
     .setFont(font)
     .setGroup(g1)
     //.setColorBackground(color(0,100,0))
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
  cp5.addSlider("Speed")
     .setPosition(125,sliderHorizonHeight)
     .setSize(sliderHorizonWidth,sliderHorizonHeight)
     .setRange(0,2)
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
  cp5.addSlider("ColorSpeed")
     .setPosition(125,2*sliderHorizonHeight)
     .setSize(sliderHorizonWidth,sliderHorizonHeight)
     .setRange(0,12)
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.RIGHT, ControlP5.BOTTOM).setPaddingX(20).setPaddingY(20);
     ;
     
//Color Sliders - Vertical      
     cp5.addSlider("redVar")
     .setValue(1)
     .setPosition(0,height-sliderVertHeight)
     .setSize(boxSide,sliderVertHeight)
     .setRange(0,5)
     .setColorBackground(color(180,0,10))
     .setColorForeground(color(250,0,100))
     .setColorActive(color(250,0,100))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("Red")
     .getValueLabel().setVisible(false)
     ;
     
     cp5.addSlider("greenVar")
     .setValue(1)
     .setPosition(boxSide,height-sliderVertHeight)
     .setSize(boxSide,sliderVertHeight)
     .setRange(0,5)
     .setColorBackground(color(10,180,0))
     .setColorForeground(color(100,250,0))
     .setColorActive(color(100,250,0))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("Green")
     .getValueLabel().setVisible(false)
     ;
    
     cp5.addSlider("blueVar")
     .setValue(1)
     .setPosition(2*boxSide,height-sliderVertHeight)
     .setSize(boxSide,sliderVertHeight)
     .setRange(0,5)
     .setColorBackground(color(0,10,180))
     .setColorForeground(color(0,100,250))
     .setColorActive(color(0,100,250))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("Blue")
     .getValueLabel().setVisible(false)
     ;

//Control Boxes 
     cp5.addToggle("Alpha")
     .setValue(0)
     .setPosition(3*boxSide,height-boxSide-60)
     .setSize(boxSide,boxSide)
     .setColorBackground(color(200,200,200))
     .setColorActive(color(100,100,100)) 
     .setFont(font)
     .setGroup(g1)
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
     ;
     
      cp5.addButton("Mode")
     .setValue(0)
     .setPosition(4*boxSide,height-boxSide-60)
     .setSize(boxSide,boxSide)
     .setColorBackground(color(200,200,0))
     .setColorActive(color(250,250,0))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("Mode")
     ;
     
     cp5.addToggle("Help")
     .setBroadcast(false) 
     .setValue(0)
     .setPosition(5*boxSide,height-boxSide-60)
     .setSize(boxSide,boxSide)
     .setFont(font)
     .setGroup(g1)
     .setColorBackground(color(10,10,10))
     .setColorActive(color(100,100,100)) 
     .setCaptionLabel("?")
     .getCaptionLabel().align(ControlP5.CENTER, ControlP5.CENTER);
     ; 
     
     cp5.addButton("Clear")
     .setValue(0)
     .setPosition(0,height-60)
     .setSize(boxSide*3,60)
     .setColorBackground(color(60,60,60))
     .setFont(font)
     .setGroup(g1) 
     .setCaptionLabel("Reset")
     ;  
     
     cp5.addButton("Exit")
     .setBroadcast(false)
     .setValue(0)
     .setSize(boxSide*3,60)
     .setPosition(boxSide*3,height-60)
     .setColorBackground(color(60,60,60))
     .setFont(font)
     .setGroup(g1)
     .setCaptionLabel("EXIT")
     ;
     
     cp5.addButton("Save")
     .setBroadcast(false)
     .setValue(0)
     .setPosition(0,0)
     .setSize(saveWidth,3*sliderHorizonHeight)
     .setColorBackground(color(0,100,100))
     .setFont(font)
     .setBroadcast(true)
     .setGroup(g1)
     ;  
     
     cp5.addBang("bang")
       .setPosition(width*.25,height*.75)
       .setSize(boxSide, boxSide)
       .setColorForeground(color(0,200,200))
       .setFont(createFont("Veranda",60,true))
       .setCaptionLabel("Create")
       .getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingY(10);
       ;
       
     cp5.addBang("bang2")
       .setPosition(width*.65,height*.75)
       .setSize(boxSide, boxSide)
       .setColorForeground(color(200,0,200))
       .setFont(createFont("Veranda",60,true))
       .setCaptionLabel("Relax")
       .getCaptionLabel().align(ControlP5.CENTER, ControlP5.BOTTOM_OUTSIDE).setPaddingY(10);
       ;
       
     cp5.addBang("Mute")
        .setPosition(width*.9,height*.05)
        .setSize(75,75)
        .setColorForeground(color(200,100,100))
        .setFont(createFont("Veranda",30,true))
        .getCaptionLabel().align(ControlP5.CENTER, ControlP5.TOP_OUTSIDE).setPaddingY(10);
        ; 
       
     cp5.addTextlabel("label")
        .setText("hexDroid")
        .setPosition(width*.125,height*.39)
        .setColorValue(250)
        .setFont(createFont("Veranda",200,true))
        ;
        
    myTextarea = cp5.addTextarea("txt")
                  .setPosition(width/10,50)
                  .setSize(900,1100)
                  .setFont(createFont("Veranda",70,true))
                  .setLineHeight(70)
                  .setColor(color(228))
                  ;
                  
}

public void Alpha() {
  alpha = !alpha; 
}

public void Help() {
  help = !help; 
  
  if(help){
  state = 1; 
  }  else {
        state = 2; 
  }
}

public void Exit(){
 // Mute(); 
  //exit(); 
}

public void Mode() {
  posX = 0; 
  drawMode += 1;  
  if(drawMode > 3){
    drawMode = 1;
  }
  cp5.getController("Mode").setLabel("Mode " + drawMode); 
}

public void Clear() {
  cp5.getController("redVar").setValue(1); 
  cp5.getController("greenVar").setValue(1); 
  cp5.getController("blueVar").setValue(1); 
}

public void Save() {
  //saveFrame(android.os.Environment.getExternalStoragePublicDirectory(android.os.Environment.DIRECTORY_PICTURES).getAbsolutePath() + "/img-####.png");
}

public void bang() {
      state = 2; 
}

public void bang2() {
      state = 11; 
}