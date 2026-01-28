/* Population, 
 - divPopulation
 - colourPopulation(), Colour Population
 */
//
void divPopulation() {
  closeX = appWidth * 24.7/28.0;
  closeY = appHeight * 1/17.0;
  closeWidth = appWidth * 2/28.0;
  closeHeight = appHeight * 2/17.0;
  // line 1
   closelineLine1X1 = closeX + closeWidth * 1/4;
   closelineLine1Y1 = closeY + closeHeight * 1/4;
   closelineLine1X2 = closeX + closeWidth * 3/4;
   closelineLine1Y2 = closeY + closeHeight * 3/4;
  // line 2
   closelineLine2X1 = closeX + closeWidth * 3/4;
   closelineLine2Y1 = closeY + closeHeight * 1/4;
   closelineLine2X2 = closeX + closeWidth * 1/4;
   closelineLine2Y2 = closeY + closeHeight * 3/4;
  //
   playSongX = appWidth * 11.3/28.0;
   playSongY = appHeight * 13/17.0;
   playSongWidth = appWidth * 3/28.0;
   playSongHeight = appHeight * 3/17.0;
  // Triangle ponits
   playSongX1 = playSongX + playSongWidth * 1/4;
   playSongY1 = playSongY + playSongHeight * 1/4;
   playSongX2 = playSongX + playSongWidth * 3/4;
   playSongY2 = playSongY + playSongHeight * 1/2;
   playSongX3 = playSongX + playSongWidth * 1/4;
   playSongY3 = playSongY + playSongHeight * 3/4;
  //
  stringMainX[0] = appWidth * 0.5/28.0;
stringMainY[0] = appHeight * 1/17.0;
stringMainWidth[0] = appWidth * 5.2/28.0;
stringMainHeight[0] = appHeight * 2/17.0;
//
stringMainX[1] = appWidth * 6.2/28.0;
stringMainY[1] = appHeight * 1/17.0;
stringMainWidth[1] = appWidth * 8.3/28.0;
stringMainHeight[1] = appHeight * 2/17.0;
//
stringMainX[2] = appWidth * 9.9/28.0;
stringMainY[2] = appHeight * 3.2/17.0;
stringMainWidth[2] = appWidth * 14.5/28.0;
stringMainHeight[2] = appHeight * 1/17.0;// 2/17.0
//
stringMainX[3] = appWidth * 9.9/28.0;
stringMainY[3] = appHeight * 4.7/17.0;
stringMainWidth[3] = appWidth * 14.5/28.0;
stringMainHeight[3] = appHeight * 1/17.0;
} //End DIV Population
//
void colourPopulation() {
color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  //println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator 
  //Button Colours: layering local variables leads to preferences controled by Booleans
  color purple = #E6C9FF;
  color darkpurple = #340564;
  color red = #FF0303;
  color darkGray = grayScale;
  color ligthGray = gray;
  //Note: able to use a Ternary Operator but ineffiecient
  if ( nightMode == true ) {
   resetBackground = resetBackgroundNight;
   resetInk = resetInkNight;
   playColourBackground = darkGray;
   playColourSymbol = ligthGray;
   playColourBackgroundActivated = ligthGray;
   playColourSymbolActivated = darkGray;
   quitBackground = ligthGray;
   quitBackgroundActivated = red;
   quitButtonInk = darkGray;
    } else {
  //Previously the Day Colour Assignments
  resetBackground = resetBackgroundDay;
  resetInk = black;
  playColourBackground = purple;
  playColourSymbol = darkpurple;
  playColourBackgroundActivated = darkpurple;
  playColourSymbolActivated = purple;
  quitBackground = white;
  quitBackgroundActivated = red;
  } //End Night Mode Colors
  //
}//End Setup
//
// End Subprogram Population
