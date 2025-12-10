/*String
 */
//
//Display
fullScreen(); //Landscape
//size(1280/960); //Portrait
int appWidth = displayWidth; // width
int appHeight = displayHeight; // height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\height:\t\t"+height);
//
//Population
float[] stringLyricsWidth = new float [3]
float stringlyricsX1 = appWidth * 0.5/28.0;
float stringlyricsY1 = appHeight * 1/17.0;
stringlyricsWidth[1] = appWidth * 5.2/28.0;
float stringlyricsHeight1 = appHeight * 2/17.0;
//
float stringlyricsX2 = stringlyricsX1;
float stringlyricsY2 = appHeight * 6/17.0;
stringlyricsWidth[2] = appWidth * 4/28.0;
float stringlyricsHeight2 = stringlyricsHeight1;
//
float stringlyricsX3 = stringlyricsX1;
float stringlyricsY3 = appHeight * 9/17.0;
stringlyricsWidth[3] = appWidth * 7/28.0;
float stringlyricsHeight3 = stringlyricsHeight1;
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
float CorbelBoldItalicAspectRatio = fontSizeCorbelBoldItalic / stringlyricsHeight1;
fontSize = stringlyricsHeight1 * CorbelBoldItalicAspectRatio;
println("Corbel Bold Italic Aspect Ratio:",CorbelBoldItalicAspectRatio);
println(); //Skip a line
//
//Note: DIV to "see" variables
rect(stringlyricsX1, stringlyricsY1, stringlyricsWidth1, stringlyricsHeight1);
rect(stringlyricsX2, stringlyricsY2, stringlyricsWidth2, stringlyricsHeight2);
rect(stringlyricsX3, stringlyricsY3, stringlyricsWidth3, stringlyricsHeight3);
//
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
float constrantDecrease = 0.99;  //99% of origonal or 1% decrease (larger #'s have  bigger decrease)
// For loop error, copy & paste three times
for( int i=0; i<3; i++){
while ( textWidth( title)> stringlyricsWidth[i] ) {
  //ERROR: infinite loop, requires exit() & println()
  fontSize *= constrantDecrease; // Assignment Operator // fontSize = fontSize * 0.99
  textFont(titleFont, fontSize); 
  } // End WHILE Error Check Text-Wrap
}// End For Loop, Font Size Check in DIVS 
//
//WHILE Error Check
// textFont() has option to combine font declaration with textSize
//textFont() is better for more than one PFont Variable
//
text(title, stringlyricsX[i], stringlyricsY1, stringlyricsWidth1, stringlyricsHeight1);
text(title, stringlyricsX2, stringlyricsY2, stringlyricsWidth2, stringlyricsHeight2);
text(title, stringlyricsX3, stringlyricsY3, stringlyricsWidth3, stringlyricsHeight3);
fill(resetInk);
