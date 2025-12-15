//Display
fullScreen(); 
//size(500, 100); 
int appWidth = displayWidth; //width
int appHeight = displayHeight; //height
//
//Population
int numberOfDIVs = 4;
float[] stringMainX = new float[numberOfDIVs];
float[] stringMainY = new float[numberOfDIVs];
float[] stringMainWidth = new float[numberOfDIVs];
float[] stringMainHeight = new float[numberOfDIVs];
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
stringMainHeight[2] = appHeight * 1/17.0;
//
stringMainX[3] = appWidth * 9.9/28.0;
stringMainY[3] = appHeight * 4.7/17.0;
stringMainWidth[3] = appWidth * 14.5/28.0;
stringMainHeight[3] = appHeight * 1/17.0;
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "lyrics";
text[1] = "info";
text[2] = "artistName";
text[3] = "songName";
//
/*Full String longer than Rectangle, "Lyrics!" 
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
 */
 /*Fonts from OS
println("Start of Console"); //ERROR: in case console Memory not enough
 String[] fontList = PFont.list();
 printArray(fontList);
*/
//
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
float CorbelBoldItalicAspectRatio = fontSizeCorbelBoldItalic / stringMainHeight[0]; // your choice: first DIV
fontSize = stringMainHeight[0] * CorbelBoldItalicAspectRatio;
println("Corbel Bold Italic Aspect Ratio:",CorbelBoldItalicAspectRatio);
println(); //Skip a line
//
//Note: DIV to "see" variables
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect( stringMainX[i], stringMainY[i], stringMainWidth[i], stringMainHeight[i] );
} //End FOR DIVs
//
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
//
// For loop error, copy & paste three times (teacher style)
for( int i=0; i<4; i++){
  while ( textWidth(text[i]) > stringMainWidth[i] ) {
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; // Assignment Operator // fontSize = fontSize * 0.99
    textFont(titleFont, fontSize); 
    iWhile++;
  } // End WHILE Error Check Text-Wrap
  println("Iterations of WHILE:", iWhile, "\tPixel difference of divWidth & textWidth:", stringMainWidth[i]-textWidth( text[i] ), "\tUsing", constantDecrease*100+"%" ); //Plus sign is concatenation for % symbol, exemplar
}// End For Loop, Font Size Check in DIVS 
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( text[i], stringMainX[i], stringMainY[i], stringMainWidth[i], stringMainHeight[i] );
}
fill(resetInk);
//
//End Program
