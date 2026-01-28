/* Buttons
 - quitButton
 - DIVs
 - musicButtonShapes, 2-D Music Buttons
 - hoverOver_draw(), Hoverover for buttons, draw()
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
//
void playDIV() {
  rect(playSongX, playSongY, playSongWidth, playSongHeight);
} // End Plauy Button DIV
//
void titleDIV() {
  // initialize shared DIV/text globals
  numberOfDIVs = 4;
  stringMainX = new float[numberOfDIVs];
  stringMainY = new float[numberOfDIVs];
  stringMainWidth = new float[numberOfDIVs];
  stringMainHeight = new float[numberOfDIVs];
  //
  text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
  text[0] = "Lyrics";
  text[1] = "Information of the song";
  text[2] = "Artist Name";
  text[3] = "Song Name";
} //End Title DIV
//
void playButtonSymbol() {
  triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
} //End Play Button Symbol
//
void musicButtonShapes() {
  playButtonSymbol();
} // End Music Button Shapes
//
void quitButtonActive() {
  fill(quitBackgroundActivated);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void quitButtonRegular() {
  fill(quitBackground);
  quitDIV();
  fill(resetBackground);
  fill(quitButtonInk);
  easyTextQuitButton();
  fill(resetInk);
} //End Quit Button Active
//
void playButtonActive() {
  fill(playColourBackgroundActivated);
  playDIV();
  fill(playColourSymbolActivated);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Active
//
void playButtonReady() {
  fill(playColourBackground);
  playDIV();
  fill(playColourSymbol);
  playButtonSymbol();
  fill(resetBackground);
} // End Play Button Ready
//
void hoverOver_draw() {
  //Button HoverOver
  if ( mouseX > closeX && mouseX < closeX + closeWidth && mouseY > closeY && mouseY < closeY + closeHeight ) {
    quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
 if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
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
