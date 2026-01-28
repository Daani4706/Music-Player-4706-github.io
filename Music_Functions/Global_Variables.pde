//Last Step to Organize
//Global Variables
int appWidth, appHeight;
float closeX, closeY, closeWidth, closeHeight;
float closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2;
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;
float playSongX, playSongY, playSongWidth, playSongHeight;
float playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3;
//
Boolean playButton=false, quitButton=false;
//
color resetBackground, resetInk, resetBackgroundDay, resetInkDay, resetBackgroundNight, resetInkNight;
color quitButtonInk;
color playColourBackground, playColourSymbol, playColourBackgroundActivated, playColourSymbolActivated;
color quitBackground, quitBackgroundActivated;
color titleInk;
color purpleInk;
boolean nightMode = false;
//
Minim minim; //initates entire class
int numberOfSongs = 3; //Best Practice
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
// DIV / text globals (shared across modules)
int numberOfDIVs;
float[] stringMainX, stringMainY, stringMainWidth, stringMainHeight;
String[] text;
//
//End Global Variables
