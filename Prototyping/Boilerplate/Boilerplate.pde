/*Hearing Music and Sound Effects
- Reading Code with CTRL-T & braces
*/
//
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//Global Variables
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
void setup() {
  size(500, 100); //width //height
  //fullScreen(); //displayHeight //displayWidth
  int appWidth = width;//best practice
  int appHeight = height;
} //end setup
//
void draw() {
} // end setup
//
void mousePressed() {
} //end Mouse Pressed
//
void keyPressed() {
} //end Key Pressed
//
//End MAIN Program
