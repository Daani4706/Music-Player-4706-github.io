/* Text
 - Draw Text, partly references functions below
 - Easy Text, default font, size
 - textSetup
 - textDraw
 - songTitle
 */
//
void drawText() {
  textdraw();
  songTitle();
  //
} // End Draw Text
//
//CAUTION: if any other text in setup() executed, formatting is not defaulted
void easyTextQuitButton() {
  //Note: rect() starts top-right corner, text() starts bottom-right corner
   text("X", closeX+closeWidth*2, closeY+closeHeight*2); //adjust fractions or decimals until working
} //End Easy Text
//
void textSetup() {
  /*Fonts from OS
   println("Start of Console"); //ERROR: in case CONSOLE Memory not enough
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   //Spelling Counts and must compare CONSOLE v Tools / Create Font / Create Font Spelling
   //Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
   */
  // use global fontSize and titleFont declared in globals
  fontSize = appHeight; // Entire program
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
  fontSize = stringMainHeight[i] * CorbelBoldItalicAspectRatio;
  textFont(titleFont, fontSize);
  // Reset font size for each DIV
  // Prevents font from becoming too small for later DIVs
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
}
// draw-time helpers
void textdraw() {
  // draw text into DIVs (safe fallback if textSetup was not called)
  textAlign(CENTER, CENTER);
  for ( int i=0; i<numberOfDIVs; i++ ) {
    text( text[i], stringMainX[i], stringMainY[i], stringMainWidth[i], stringMainHeight[i] );
  }
}

void songTitle() {
  // draw the currently saved song title (fallback)
  textAlign(CENTER, CENTER);
  if ( songTitle != null ) {
    text( songTitle, stringMainX[2], stringMainY[2], stringMainWidth[2], stringMainHeight[2] );
  }
}
//
//End Program
//
//End Subprogram Text
