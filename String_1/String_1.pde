/*String
 */
//
//Display
fullScreen(); //Landscape
//size(1280/960); //Portrait
int appWidth = displayWidth; // width
int appHeight = displayHeight; // height
//println("Display VARS:", "appWidth:"+appWidth,", appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\height:\t\t"+height);

//
//Population
int numberOfDIVs = 3;
float[] stringlyricsX = new float[numberOfDIVs];
float[] stringlyricsY = new float[numberOfDIVs];
float[] stringlyricsWidth = new float[numberOfDIVs];
float[] stringlyricsHeight = new float[numberOfDIVs];
//
stringlyricsX[0] = appWidth * 0.5/28.0;
stringlyricsY[0] = appHeight * 1/17.0;
stringlyricsWidth[0] = appWidth * 5.2/28.0;
stringlyricsHeight[0] = appHeight * 2/17.0;
//
stringlyricsX[1] = stringlyricsX[0];
stringlyricsY[1] = appHeight * 6/17.0;
stringlyricsWidth[1] = appWidth * 4/28.0;
stringlyricsHeight[1] = stringlyricsHeight[0];
//
stringlyricsX[2] = stringlyricsX[0];
stringlyricsY[2] = appHeight * 9/17.0;
stringlyricsWidth[2] = appWidth * 7/28.0;
stringlyricsHeight[2] = stringlyricsHeight[0];

//
//Strings, Text, literally
String title = "Lyrics! I changed 2D Size.";
/*Full String longer than Rectangle, "Lyrics!" 
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
 /*Fonts from OS
println("Start of Console"); //ERROR: in case console Memory not enough
 String[] fontList = PFont.list();
 printArray(fontList);
*/
float fontSize = appHeight; // Entire program
PFont titleFont; // font Var name
String CorbelBoldItalic= "Corbel Bold Italic";
titleFont = createFont (CorbelBoldItalic, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize, CorbelBoldItalic, titleFont);
float fontSizeCorbelBoldItalic = 84.0;
//Hardcoded fontSizeCorbelBoldItalic
println("Font Size:", fontSize);
/* Aspect Ratio Manipulations (changes to variables)
- choose Aspect Radio that must be mutliplied: fontSize/titleHeight
- Rewriting fontSize with formula
*/
//
float CorbelBoldItalicAspectRatio = fontSizeCorbelBoldItalic / stringlyricsHeight[0]; // your choice: first DIV
fontSize = stringlyricsHeight[0] * CorbelBoldItalicAspectRatio;
println("Corbel Bold Italic Aspect Ratio:",CorbelBoldItalicAspectRatio);
println(); //Skip a line

//
//Note: DIV to "see" variables
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringlyricsX[i], stringlyricsY[i], stringlyricsWidth[i], stringlyricsHeight[i] );
}

//Drawing Text
//Minimum Lines of code to format, draw text with colour, and become aware of other functions
//Must be before text()
color purpleInk = #F0C6FF; // Hexadecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); // Ink Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
//Drawing Text
//ERROR Check fontSize, decreasing the text when wrapped or not shown
textFont(titleFont, fontSize);
//WHILE Error Check
// textFont() has option to combine font declaration with textSize
//textFont() is better for more than one PFont Variable
float constantDecrease = 0.99;  //99% of origonal or 1% decrease (larger #'s have  bigger decrease)
int iWhile = 0; // counting iterations

// For loop error, copy & paste three times (teacher style)
for( int i=0; i<3; i++){
  while ( textWidth( title) > stringlyricsWidth[i] ) {
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; // Assignment Operator // fontSize = fontSize * 0.99
    textFont(titleFont, fontSize); 
    iWhile++;
  } // End WHILE Error Check Text-Wrap
  println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringlyricsWidth[i]-textWidth( title ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
}// End For Loop, Font Size Check in DIVS 

//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( title, stringlyricsX[i], stringlyricsY[i], stringlyricsWidth[i], stringlyricsHeight[i] );
}
fill(resetInk);
// End Program
