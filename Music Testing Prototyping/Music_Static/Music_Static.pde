/* Library Notes
  - File / Sketch / Import Library / Manage Libraries
  - We use Minim for Sound and Sound Effects
  - Able to Google-search libraries to make your project easier
  - Documentation: https://code.compartmental.net/minim/
  - Specific Class: https://code.compartmental.net/minim/audioplayer_class_audioplayer.html
  - Specific Class: https://code.compartmental.net/minim/audiometadata_class_audiometadata.html
  
  ** You are now able to research any Processing-Java Library ... or Any Java Library from the internet **
  - Processing-Java Libraries must be installed into the IDE
  - Java Libraries simply require the 'import' declaration
*/
//Library - Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Varaibles
Minim minim; //initates entire class
int numberOfSongs = 1; //Best Practice
int numberOfSoundEffects = 1; //Best Practice
AudioPlayer[] playList = new AudioPlayer[ numberOfSongs ];
AudioPlayer[] soundEffects = new AudioPlayer[ numberOfSoundEffects];
int currentSong = numberOfSongs - numberOfSongs; //ZERO, Math Property
//
//Display
size(500, 100); //width //height
//fullScreen(); //displayHeight //displayWidth
int appWidth = width; 
int appHeight = height; 
//
//Music Loading - STRUCTURED Review
minim = new Minim(this);
String upArrow = "../../";
String musicFolder = "Music/"; //Developer Secific
String songName1 = "Cheri Cheri Lady";
String fileExtension_mp3 = ".mp3";
//
String musicDirectory = upArrow + musicFolder; //Concatenation
String file = musicDirectory + songName1 + fileExtension_mp3;
println("Music Pathway",musicDirectory);
println("Full Music File Pathway", file);

playList[ currentSong ] = minim.loadFile(file); //ERROR: Verify Spelling & Library installed, Sketch / Import Library
//
if ( playList[currentSong]==null){ //ERROR, play list is Null
  //see FILE or minim.loadFile
  println("Did this music and sound load properly");
  printArray(playList);
}
