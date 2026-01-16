/* Creating Buttons - Grouping Code
 - Colours & Night Mode
 */
//
//Library - Minim
//
//Global Variables
//Note: Move the Global Variables to their subprograms
//All Global Variables execute first ... A global Variable is a Global Variable
int appWidth, appHeight;
float closeX, closeY, closeWidth, closeHeight;
float closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2;
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;
float playSongX, playSongY, playSongWidth, playSongHeight;
float playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3;
//
Boolean playButton=false, quitButton=false;;
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
  //
  //Colour Population
  nightMode=false;
  buildingColours(); //See Colour Population
  //
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
   //println (playButton);
  //Button HoverOver
  if ( mouseX > closeX && mouseX < closeX + closeWidth && mouseY > closeY && mouseY < closeY + closeHeight ) {
     quitButtonActive();
  } else {
    quitButtonRegular();
  }//End Quit Button Hover Over
  if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
  if ( playButton == false ) playButtonActive();
  } else {
    playButtonReady();
    if ( playButton == true ) playButtonActive();
  }//End Play Button Hover Over
  //
} //End draw
//
void mousePressed() {
  //Quit Button: does not use Boolean, only mouseX&Y already present in system key variables
  if ( mouseX > closeX && mouseX < closeX + closeWidth && mouseY > closeY && mouseY < closeY + closeHeight ) {
   quitButton(); //See Below
  }
  //Music Play Functions
  /* Boolean Test of Concept
   if ( playButton == true ) {
   println("Play My Song");
   playButton=false; //reset Boolean for draw()
   } else {
   println(" ");
   }
   */  
  if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
  //Note, change to "Is the Song Playing Boolean"
    if ( playButton == false ) {
      playButton = true;
      println("Wahoo! I'm playing you");
    } else {
      playButton = false;
      println(" ");
    }
    //if ( playButton == true ) playButtonActive();
    //if ( playButton == false ) playButtonReady();
  } // End Play Button
} //End Mouse Pressed
//
void keyPressed() {
  //Note, CAPs Lock on Code: key=='[CAP]' || key=='[lowerCase]'
  //CAUTION: Order Matters
  if (key=='Q' || key=='q') {
    quitButton();  //See Below
  } //Quit Button
  if (key=='D' || key=='d') {
    colourPopulation();
  } //Night Mode
} //End Key Pressed
//
void quitButton() {
noLoop(); //Adjusts the exit of the program using finishing draw()
    exit(); //With noLoop(), exit happens here
    println("Final Line of mousePressed and finishes draw()");
}// End Quit Button
//
//End MAIN Program
