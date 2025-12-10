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
float stringimageX = appWidth * 0.5/28.0;
float stringimageY = appHeight * 3.2/17.0;
float stringimageWidth = appWidth * 9/28.0;
float stringimageHeight = appHeight * 8.3/17.0;
//
//Strings, Text, literally
String title = "Daaani!";
/*Full String longer than Rectangle,  "Daaani! I changed 2D Size."
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
float fontSizeCorbelBoldItalic = 88.0;
//Hardcoded fontSizeCorbelBoldItalic
println("Font Size:", fontSize);
/* Aspect Ratio Manipulations (changes to variables)
- choose Aspect Radio that must be mutliplied: fontSize/titleHeight
- Rewriting fontSize with formula
*/
//
float CorbelBoldItalicAspectRatio = fontSizeCorbelBoldItalic / stringimageHeight;
fontSize = stringimageHeight * CorbelBoldItalicAspectRatio;
println("Corbel Bold Italic Aspect Ratio:",CorbelBoldItalicAspectRatio);
println(); //Skip a line
//
//Note: DIV to "see" variables
rect(stringimageX, stringimageY, stringimageWidth, stringimageHeight);
//
color purpleInk = #F0C6FF; // Hexadecimal
color whiteInk = #FFFFFF;
color resetInk = whiteInk;
fill(purpleInk); // Ink Grey Scale 0-255
textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
//
textFont(titleFont, fontSize);
// textFont() has option to combine font declaration with textSize
//textFont() is better for more than one PFont Variable
//
text(title, stringimageX, stringimageY, stringimageWidth, stringimageHeight);
fill(resetInk);
