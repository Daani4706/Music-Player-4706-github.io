/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - draw() varaibles initiated in Global Varaibles due to LOOP
 - MouseX & Y keyVariables
 - Using println() to test functionality
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
Boolean playButton=false;
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
}//End Setup
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
 if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
   //println("Wahoo! I'm playing you");
  playButton = true;
  } else {
    //print(" ");
    playButton = false;
  }//End Introduction of DRAW()
  //
  //Button HoverOver
  //
} //End draw
//
void mousePressed() {
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
