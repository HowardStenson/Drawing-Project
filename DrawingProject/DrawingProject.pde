
// Global Variables
color ink, black=#000000;
color erase, white=#FFFFFF;
color reds, red=#FC0303 ;
color greys, grey=#212121 ;
color blues, blue=#5648FF ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float eraseX, eraseY, eraseWidth, eraseHeight ;
float redX, redY, redWidth, redHeight ;
float blueX, blueY, blueWidth, blueHeight ;
float drawingDiameter, drawingDiameter2 ;
//
float backgroundcolorX, backgroundcolorY, backgroundcolorWidth, backgroundcolorHeight ;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight ;
float imageWidthRatio ; 
float imageHeightRatio ;
PImage pic ;
//
Boolean draw=false;  
boolean draw2=false;
boolean draw3=false;
boolean draw4=false;

void setup() {
  size(500, 600);
  //
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
  redY = height*3/10 ;
  redWidth = width*5/80;
  redHeight = height*5/40;
  //
  blueX=  width*230/300;
  blueY= height*2/19 ;
  blueWidth= width*5/80;
  blueHeight=  height*5/40;
  //
  ink = black;
  erase = white;
  drawingDiameter = width*1/100;
  drawingDiameter2 = width*3/100;
  //
  backgroundcolorX = width*2.5/4 ;
  backgroundcolorY = height*4.9/6 ;
  backgroundcolorWidth = width*3/40 ;
  backgroundcolorHeight = height*4/50 ;
  //
  imageStartWidth = width*0;
  imageStartHeight = height*0; 
  imageWidth = width*3/4;
  imageHeight = height*4/5;
  //
  imageWidthRatio = 215.0/430.0 ;  //430w*340h
  imageHeightRatio = 345.0/430.0 ;
  imageHeight = height*imageHeightRatio ; 
  pic = loadImage("image0.png");
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {
  quitButtonDraw();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw == true) {
      fill(ink);
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      noStroke();
    }
  }
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw2 == true) {
      fill(erase);
      ellipse(mouseX, mouseY, drawingDiameter2, drawingDiameter2);
      noStroke();
    }
  }
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw3 == true) {
      fill(red);
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      noStroke();
    }
  }
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    if (draw4 == true) {
      fill(blue);
      ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
      noStroke();
    }
  }
  rect(redX, redY, redWidth, redHeight);
  rect(eraseX, eraseY, eraseWidth, eraseHeight);
  rect(blueX, blueY, blueWidth, blueHeight);
  rect(backgroundcolorX, backgroundcolorY, backgroundcolorWidth, backgroundcolorHeight);
  //image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
  //rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
}

void mousePressed() {
  quitButtonMouseClicked();
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    println("drawing surface");
    if (draw == false) {
      draw = true ;
    } else {
      draw4 = false ;
      draw3 = false ;
      draw2 = false ;
      draw = false ;
    }
  }
  if ( mouseX>eraseX  && mouseX<eraseX+eraseWidth  && mouseY>eraseY && mouseY<eraseY+eraseHeight) {
    println("white");
    if (draw2 == false) {
      draw2 = true ;
    } else { 
      draw4 = false ;
      draw3 = false ;
      draw2 = false ;
    }
  }
  if ( mouseX>redX  && mouseX<redX+redWidth  && mouseY>redY && mouseY<redY+redHeight) {
    println("red");
    if (draw3 == false) {
      draw3 = true ;
    } else { 
      draw4 = false ;
      draw3 = false ;
      draw2 = false ;
    }
  }
  if ( mouseX>blueX  && mouseX<blueX+blueWidth  && mouseY>blueY && mouseY<blueY+blueHeight) {
    println("blue");
    if (draw4 == false) {
      draw4 = true ;
    } else { 
      draw4 = false ;
      draw3 = false ;
      draw2 = false ;
    }
  }
 if ( mouseX>backgroundcolorX  && mouseX<backgroundcolorX+backgroundcolorWidth  && mouseY>backgroundcolorY && mouseY<backgroundcolorY+backgroundcolorHeight) {
    println("drawerPicture");
    image(pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    rect(imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    pic = loadImage("image0.png");    
  }
}
