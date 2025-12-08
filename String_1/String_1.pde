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
/* Full String longer than Rectangle,  "Wahoo! I changed 2D Size."
 - When a String just fits the height aspect ratio is the largest, sometimes >1
 - Fonts differs in WHITE SPACE around the foreground "coloured ink"
/* Fonts from OS
println("Start of Console"); //ERROR: in case console Memory not enough
 String[] fontList = PFont.list();
 printArray(fontList);
 */
int fontSize = 50; // Entire program
PFont titleFont; // font Var name
String GillSansNovaUltraBold= "Gill Sans Nova Ultra Bold";
titleFont = createFont (GillSansNovaUltraBold, fontSize);
//Tools / Create Font / Find Font / Do Not Press "OK", known conflict between loadFont() and createFont()
//
println(fontSize,GillSansNovaUltraBold, titleFont);
//
//Note: DIV to "see" variables
rect(stringimageX, stringimageY, stringimageWidth, stringimageHeight);
//
color purpleInk = #F0C6FF; // Hexadecimal
fill(purpleInk); // Ink Grey Scale 0-255
textFont(titleFont, fontSize);
// textFont() has option to combine font declaration with textSize
//
text(title, stringimageX, stringimageY, stringimageWidth, stringimageHeight);
