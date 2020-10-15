// Global Variables
String titl= "erase";
PFont eraseFont;
color ink, black=#000000;
color erase, white=#FFFFFF;
color reds, red=#FC0303 ;
color greys, grey=#212121 ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
int eraseX, eraseY, eraseWidth, eraseHeight ;
float redX, redY, redWidth, redHeight ;
float drawingDiameter;
float background1X, background1Y, background1Height,background1Widht ;
Boolean draw=false;
boolean draw2=false;
boolean draw3=false;


void setup() {
  size(500, 600);
  quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  //
  eraseX = width*230/300 ;
  eraseY = height*1/2 ;
  eraseWidth = width*5/80  ;
  eraseHeight = height*5/40 ;
  //
  redX = width*230/300 ;
  redY = height*2/10 ;
  redWidth = width*5/80;
  redHeight = height*5/40;
  //
  background1X = width*0.1/100;
  background1Y = height*0.1/100;
  background1Height = height*98.9/99 ;
  background1Widht = width*98.9/99 ;
  //background2X =width ;
   // background2Y = height;
     // background2Height = ;
       // background2Widht = width;
 
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {
  
  quitButtonDraw();

  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
    noStroke();
  }
   if (draw2 == true) {
   fill(erase);
   ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
   noStroke();
  }
  if (draw3 == true) {
   fill(red);
   ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
   noStroke();
  }
 
  rect(redX, redY, redWidth, redHeight) ;
  //
  rect(eraseX, eraseY, eraseWidth, eraseWidth,eraseHeight);
}
void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    //( mouseX>eraseX  && mouseX<eraseX+eraseWidth  && mouseY>eraseY && mouseY<eraseY+eraseHeight)
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black;
    erase = white;
    drawingDiameter = width*1/100;
  }
  if ( mouseX>eraseX  && mouseX<eraseX+eraseWidth  && mouseY>eraseY && mouseY<eraseY+eraseHeight) {
   println("white");
   if (draw2 == false) {
     draw2 = true ;
   }else{ 
     draw2 = false ;
     draw = false ;
   }
    ink = black;
    erase = white;
    drawingDiameter = width*1/100;
}
if ( mouseX>redX  && mouseX<redX+redWidth  && mouseY>redY && mouseY<redY+redHeight) {
   println("white");
   if (draw3 == false) {
     draw3 = true ;
   }else{ 
     draw3 = false ;
     draw2 = false ;
     draw = false ;
   }
    ink = black;
    erase = white;
    drawingDiameter = width*1/100;
}
}
