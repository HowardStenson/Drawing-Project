// Global Variables
color ink, black=#000000;
color erase, white=#FFFFFF;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
int eraseX, eraseY, eraseWidth, eraseHeight ;
float drawingDiameter;
Boolean draw=false;
boolean draw2=false;


void setup() {
  size(500, 600);
  quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  eraseX = width*255/300 ;
  eraseY = height*1/2 ;
  eraseWidth = width*5/80  ;
  eraseHeight = height*5/40 ;

  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {
  quitButtonDraw();

  if (draw == true) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
   if (draw2 == true) {
    fill(erase);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
  rect(eraseX, eraseY, eraseWidth, eraseWidth,eraseHeight );
}


void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
    ink = black; // example to change ink
    erase = white ;
    drawingDiameter = width*1/100;
  }
}
