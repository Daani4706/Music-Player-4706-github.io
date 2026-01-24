//Last Step to Organize
//Global Variables
int appWidth, appHeight;
rect(closeX, closeY, closeWidth, closeHeight);
line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
rect(playSongX, playSongY, playSongWidth, playSongHeight);
triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
color titleInk;
color purpleInk;
Boolean nightMode=false;
//
Minim minim; //initates entire class
int numberOfSongs = 8; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
AudioMetaData[] playListMetaData = new AudioMetaData[ numberOfSongs ];
//
String songTitle;
float fontSize=0; //Able to set the First Font Size to AppHeight
PFont titleFont;
//
//End Global Variables
