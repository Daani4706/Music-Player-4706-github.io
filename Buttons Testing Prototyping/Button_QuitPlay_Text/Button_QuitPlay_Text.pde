/* Creating Buttons - Text in the Button
 - Simple Algorithm ... not discussing variables, fonts, DIVs, iterations, or errors
 - Default font size ... may be difficult to see depending on Display Geometry
 */
//
//Library - Minim
//
//Global Variables
int appWidth, appHeight;
float closeX, closeY, closeWidth, closeHeight;
float closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2;
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;
float playSongX, playSongY, playSongWidth, playSongHeight;
float playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
boolean nightMode = false;
//
void setup() {
  //Display
  size(900, 500);
  //fullScreen();
  appWidth = width;
  appHeight = height;
  //Population
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
  //DIVS
  println(closeX, closeY, closeWidth, closeHeight);
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
  line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
  rect(playSongX, playSongY, playSongWidth, playSongHeight);
  triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
  //Colour Population
  nightMode=false;
  color black = 0; //Gray Scale, much smaller color, 256 bits
  color white = 255; //Gray Scale
  color grayScale = 256/2; //Example Gray Scale, small memory
  color gray = #B9B9B9; //Example Gray Scale, large memory
  //CANVAS: default background and ink
  resetBackgroundDay = white;
  resetInkDay = black;
  resetBackgroundNight = 256/4;
  resetInkNight = int(256*0.75); // 3/4 of origoinal, not 1/4
  println("Casting answer is:", resetInkNight); //Exactly 192, no rounding invovled, checked on calculator 
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
  playColourBackgroundActivated = purple;
  playColourSymbolActivated = darkpurple;
  quitBackground = white;
  quitBackgroundActivated = red;
  } //End Night Mode Colors
  //
}//End Setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
 if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
   //println("Wahoo! I'm playing you");
  playButton = true;
   fill(playColourBackgroundActivated);
   rect(playSongX, playSongY, playSongWidth, playSongHeight);
   fill(playColourSymbolActivated);
   triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3); 
   fill(resetBackground);
  } else {
    //print(" ");
    playButton = false;
    fill(playColourBackgroundActivated);
    rect(playSongX, playSongY, playSongWidth, playSongHeight);
    fill(playColourSymbolActivated);
    triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3); 
    fill(resetBackground);
    }//End Play Button Hover Over 
    if ( mouseX > closeX && mouseX < closeX + closeWidth && mouseY > closeY && mouseY < closeY + closeHeight ) {
    fill(quitBackgroundActivated);
    rect(closeX, closeY, closeWidth, closeHeight);
    line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
    line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", closeX+closeWidth*2, closeY+closeHeight*2); //adjust fractions or decimals until working
    fill(resetInk);
     } else {
    fill(quitBackgroundActivated);
    rect(closeX, closeY, closeWidth, closeHeight);
    line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
    line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
    fill(resetBackground);
    fill(quitButtonInk);
    //Note: rect() starts top-right corner, text() starts bottom-right corner
    text("X", closeX+closeWidth*2, closeY+closeHeight*2); //adjust fractions or decimals until working
    fill(resetInk);
  }//End Quit Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean, only mouseX&Y already present in system key variables
  if ( mouseX > closeX && mouseX < closeX + closeWidth && mouseY > closeY && mouseY < closeY + closeHeight ) {
     noLoop(); //Adjusts the exit of the program using finishing draw()
    exit(); //With noLoop(), exit happens here
    println("Final Line of mousePressed and finishes draw()");
  }
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
    playButton=false; //reset Boolean for draw()
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
