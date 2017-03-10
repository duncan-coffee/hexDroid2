//int sideLength = 180;
//int sideHeight = 280;
int gap = 60; 
int thickness = 40; 

void rectangle(int posX, int posY, int sideLength, int sideHeight, color fill){
  fill(fill); 
  rect(posX,posY,sideLength,sideHeight); 
}

void topEdge(int posX, int posY, int sideLength, color fill){ 
  fill(fill); 
  //Top Edge Skew Right
  beginShape(); 
    vertex(posX,posY); 
    vertex(posX+thickness,posY-thickness); 
    vertex(posX+sideLength+thickness,posY-thickness); 
    vertex(posX+sideLength,posY); 
  endShape(); 
}

void bottomEdge(int posX, int posY, int sideLength, color fill){ 
  fill(fill); 
  //Bottom Edge Skew Right
  beginShape(); 
    vertex(posX,posY); 
    vertex(posX+thickness,posY+thickness); 
    vertex(posX+sideLength+thickness,posY+thickness); 
    vertex(posX+sideLength,posY); 
  endShape(); 
}


void sideEdgeUp(int posX, int posY, int sideLength, int sideHeight, color fill){
  //Side Edge Skew Up
  fill(fill);
  beginShape(); 
    vertex(posX+sideLength,posY+sideHeight); 
    vertex(posX+sideLength+thickness,posY+sideHeight-thickness); 
    vertex(posX+sideLength+thickness,posY-thickness); 
    vertex(posX+sideLength,posY); 
  endShape(); 
}

void sideEdgeDown(int posX, int posY, int sideLength, color fill){
  //Side Edge Skew Down 
  fill(fill);
  beginShape(); 
    vertex(posX+sideLength,0); 
    vertex(posX+sideLength+thickness,thickness); 
    vertex(posX+sideLength+thickness,posY+thickness); 
    vertex(posX+sideLength,posY); 
  endShape(); 
}

void applyShader(){
  
//Color Sliders
topEdge(0,height-sliderVertHeight-gap,boxSide,color(100,0,0)); //Red
topEdge(boxSide,height-sliderVertHeight-gap,boxSide,color(0,100,0));//Green 
topEdge(boxSide*2,height- sliderVertHeight - gap,boxSide, color(0,0,100));//Blue
sideEdgeUp(boxSide*2,height-sliderVertHeight-gap,boxSide, sliderVertHeight-boxSide, color(0,0,50));//Blue 

//Buttons
topEdge(boxSide*3,height- boxSide- gap,boxSide,150); //Alpha
topEdge(boxSide*4,height- boxSide- gap,boxSide,color(150,150,0)); //Mode
topEdge(boxSide*5,height- boxSide- gap,boxSide,25); //Help

//Control Sliders
bottomEdge(0,sliderHorizonHeight*3,saveWidth,color(10,80,80)); //Save
bottomEdge(saveWidth,sliderHorizonHeight*3,sliderHorizonWidth,color(30,30,80)); //Sliders
sideEdgeDown(saveWidth, sliderHorizonHeight*3, sliderHorizonWidth, color(20,20,50)); //Slider Right

}

void applyShaderIntro(){
//Create Button
  topEdge(int(width*.25),int(height*.75),boxSide,color(0,150,150)); 
  sideEdgeUp(int(width*.25),int(height*.75), boxSide, boxSide, color(0,100,100));
//Relax Button   
  topEdge(int(width*.65),int(height*.75),boxSide,color(150,0,150)); 
  sideEdgeUp(int(width*.65),int(height*.75), boxSide, boxSide, color(100,0,100)); 
}