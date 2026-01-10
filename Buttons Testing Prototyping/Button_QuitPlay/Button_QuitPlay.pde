/* Creating Buttons
 - Understanding how the mixing of boilerplate happens
 - Introducing Booleans to communicate between procedures, 1 bite of information
 
 - Specific Debugging Topics
 - draw() varaibles initiated in Global Varaibles due to LOOP
 - MouseX & Y keyVariables
 - Using println() to test functionality
 
 - What to copy and paste
 - Quit & Play DIV
 
 
 CONTINUE HERE
 
 
 
 - Quit Button: Time Stamp specficially noLoop() and exit()

 - Next Program to Update: Music Dynamic v2
 
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
  size(500,100);
  //fullScreen();
  appWidth = width;
  appHeight = height;
//Population
float closeX = appWidth * 24.7/28.0;
float closeY = appHeight * 1/17.0;
float closeWidth = appWidth * 2/28.0;
float closeHeight = appHeight * 2/17.0;
// line 1
float closelineLine1X1 = closeX + closeWidth * 1/4; 
float closelineLine1Y1 = closeY + closeHeight * 1/4;
float closelineLine1X2 = closeX + closeWidth * 3/4; 
float closelineLine1Y2 = closeY + closeHeight * 3/4;
// line 2
float closelineLine2X1 = closeX + closeWidth * 3/4; 
float closelineLine2Y1 = closeY + closeHeight * 1/4;
float closelineLine2X2 = closeX + closeWidth * 1/4; 
float closelineLine2Y2 = closeY + closeHeight * 3/4;
//
float playSongX = appWidth * 11.3/28.0;
float playSongY = appHeight * 13/17.0;
float playSongWidth = appWidth * 3/28.0;
float playSongHeight = appHeight * 3/17.0;
// Triangle ponits
float playSongX1 = playSongX + playSongWidth * 1/4;
float playSongY1 = playSongY + playSongHeight * 1/4;
float playSongX2 = playSongX + playSongWidth * 3/4;
float playSongY2 = playSongY + playSongHeight * 1/2;
float playSongX3 = playSongX + playSongWidth * 1/4;
float playSongY3 = playSongY + playSongHeight * 3/4;
//DIVS
println(closeX, closeY, closeWidth, closeHeight);
rect(closeX, closeY, closeWidth, closeHeight);
line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
rect(playSongX, playSongY, playSongWidth, playSongHeight);
triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
} //End setup
//
void draw() {
  //println ("My Mouse is", mouseX, mouseY);
  //Button HoverOver
  if ( mouseX>playSongX && mouseX<playSongX+playSongWidth && mouseY>playSongY && mouseY<playSongY+playSongHeight ) {
    //println("Wahoo! I'm playing you");
    playButton = true;
  } else {
    //print(" ");
    playButton = false;
  }
} //End draw
//
void mousePressed() {
  //Music Play Functions
  if ( playButton == true ) {
    println("Play My Song");
  } else {
    println(" ");
  }
} //End Mouse Pressed
//
void keyPressed() {
} //End Key Pressed
//
//End MAIN Program
