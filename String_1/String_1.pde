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
//Strings, Text, littearaly
String title = "Daaani!";
//
//Note: DIV to "see" variables
 rect(stringimageX, stringimageY, stringimageWidth, stringimageHeight);
 //
 text(title, stringimageX, stringimageY, stringimageWidth, stringimageHeight);
