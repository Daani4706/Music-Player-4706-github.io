/* Buttons
 - quitButton
 - DIVs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
 - TBA
 */
 //
 void quitButton() {
  noLoop(); //Adjusts the exit of the program using finishing draw()
  exit(); //With noLoop(), exit happens here
  println("Final Line of mousePressed and finishes draw()");
}//End Quit Button
//
void DIVs() {
  quitDIV();
  playDIV();
  titleDIV();
} //End DIVs
//
void quitDIV() {
  rect(closeX, closeY, closeWidth, closeHeight);
} // End Quit Button DIV
void playDIV() {
  rect(playSongX, playSongY, playSongWidth, playSongHeight);
 } // End Plauy Button DIV
void titleDIV() {
  int numberOfDIVs = 4;
float[] stringMainX = new float[numberOfDIVs];
float[] stringMainY = new float[numberOfDIVs];
float[] stringMainWidth = new float[numberOfDIVs];
float[] stringMainHeight = new float[numberOfDIVs];
} //End Title DIV
void playButtonSymbol() {
  triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
}//End Play Button Symbol
void musicButtonShapes() {
  playButtonSymbol();
} // End Msuic Button Shapes
void quitButtonActive() {
   fill(quitBackgroundActivated);
    rect(closeX, closeY, closeWidth, closeHeight);
    line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
    line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", closeX+closeWidth*2, closeY+closeHeight*2); //adjust fractions or decimals until working
    fill(resetInk);
    } //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
    rect(closeX, closeY, closeWidth, closeHeight);
    line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
    line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", closeX+closeWidth*2, closeY+closeHeight*2); //adjust fractions or decimals until working
    fill(resetInk);
    } //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
    rect(playSongX, playSongY, playSongWidth, playSongHeight);
    fill(playColourSymbolActivated);
    triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3); 
    fill(resetBackground);
    } // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  rect(playSongX, playSongY, playSongWidth, playSongHeight);
  fill(playColourSymbol);
  triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3); 
    fill(resetBackground);
   } // End Play Button Ready
void hoverOver_draw() {
  //Button HoverOver
  if ( mouseX>quitDivX && mouseX<quitDivX+quitDivWidth && mouseY>quitDivY &&mouseY<quitDivY+quitDivHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playDivX && mouseX<playDivX+playDivWidth && mouseY>playDivY && mouseY<playDivY+playDivHeight ) {
    if ( playButton == false ) playButtonActive();
  } else {
    //Order of below creates optical illusion - switching colours
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }//End Play Button Hover Over
  //
} //End Hoverover, draw()
//
//End Buttons Subprogram
