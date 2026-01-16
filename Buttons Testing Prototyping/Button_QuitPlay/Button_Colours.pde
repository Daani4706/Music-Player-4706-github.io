/* List of Buttons and Code Colours
 - Quit
 - Play, Boolean Only
 */
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
//
// End Button Subprogram
