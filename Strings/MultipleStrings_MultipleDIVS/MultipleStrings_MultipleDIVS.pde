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
stringMainX[1] = stringMainX[0];
stringMainY[1] = appHeight * 6/17.0;
stringMainWidth[1] = appWidth * 4/28.0;
stringMainHeight[1] = stringMainHeight[0];
//
stringMainX[2] = stringMainX[0];
stringMainY[2] = appHeight * 9/17.0;
stringMainWidth[2] = appWidth * 7/28.0;
stringMainHeight[2] = stringMainHeight[0];
//
stringMainX[3] = stringMainX[0];
stringMainY[3] = appHeight * 9/17.0;
stringMainWidth[3] = appWidth * 7/28.0;
stringMainHeight[3] = stringMainsHeight[0];
//
//Strings, Text, Literal
String[] text = new String[numberOfDIVs]; //CAUTION: Data intentionally makes STRINGS=numberOfDIVs, one-to-one counting
text[0] = "lyrics";
text[1] = "info";
text[2] = "artistName";
text[3] = "songName";
//
//
//Font Loading & Aspect Ratio
float fontSize = appHeight;
PFont titleFont;
String harrington = "Harrington";
titleFont = createFont(harrington, fontSize);
float fontSizeHarrington = 83.0;
float divHeightHarrington = stringDivHeight[0];
float harringtonAspectRatio = fontSizeHarrington / divHeightHarrington;
fontSize = stringDivHeight[0]*harringtonAspectRatio; 
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
  rect(infoX, infoY, infoWidth, infoHeight);
  rect(artistNameX, artistNameY, artistNameWidth, artistNameHeight);
  rect(songNameX, songNameY, songNameWidth, songNameHeight);
} //End FOR DIVs
//
//Drawing Text
color purpleInk = #2C08FF; //AP MiniLesson on bit, 8-bit or byte (grey scale, 256), colour
color whiteInk = #FFFFFF; //Grey Scale is 255
color resetInk = whiteInk;
fill(purpleInk);
textAlign (CENTER, CENTER);
//Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
textFont(titleFont, fontSize); 
float constantDecrease = 0.99;  
int iWhile=0; 
for ( int i=0; i<3; i++ ) {
  while ( textWidth( text[i] ) > stringDivWidth[i] ) {
    iWhile++;
    //ERROR: infinite loop, requires exit() & println()
    fontSize *= constantDecrease; 
    textFont(titleFont, fontSize); 
  } //End WHILE Error Check Text-wrap
} //End FOR Loop, Font Size Check in DIVs
//
for ( int i=0; i<numberOfDIVs; i++ ) {
  text( text[i], stringDivX[i], stringDivY[i], stringDivWidth[i], stringDivHeight[i] );
}
fill(resetInk);
//
//End Program
