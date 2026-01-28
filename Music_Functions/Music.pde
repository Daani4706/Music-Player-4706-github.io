/* Music Subprogram
 - Music Setup
 - Key Pressed Music Buttons
 */
//
// Music setup (use globals declared in Global_Variables.pde)
void musicSetup() {
  // initialize minim
  minim = new Minim(this); // Mandatory
 // Place your MP3 files inside the sketch "data" folder for Processing.
 // For example: <sketch folder>/data/Music/Cheri Cheri Lady.mp3
 String musicFolder = "Music/"; // Developer-specific subfolder inside data
 String soundEffectsFolder = "Sound Effect/"; // Developer-specific subfolder inside data
  //
String[] songName = new String[numberOfSongs];
songName[0] = "Cheri Cheri Lady";
songName[1] = "Cheap Thrills";
songName[2] = "Happy Nation";
//
String soundEffect1 = "Spring_Attic_Door";
String fileExtension_mp3 = ".mp3";
//
// When files are placed in the sketch "data" folder, minim.loadFile can load
// them using a relative path from the data folder. Build paths accordingly.
String musicDirectory = musicFolder; // e.g. "Music/"
String soundEffectsDirectory = musicFolder + soundEffectsFolder; // e.g. "Music/Sound Effect/"
String file; //TO BE Rewritten and deleted once file is LOADED
//
  for ( int i=0; i<numberOfSongs; i++ ) {
    // Build absolute path inside the sketch data folder
    file = sketchPath("data") + System.getProperty("file.separator") + musicDirectory + songName[i] + fileExtension_mp3;
    java.io.File f = new java.io.File(file);
    if ( f.exists() ) {
      playList[ currentSong ] = minim.loadFile( file ); // load using absolute path
      println("Loaded:", file);
      // populate metadata if available
      if ( playList[currentSong] != null ) {
        playListMetaData[currentSong] = playList[currentSong].getMetaData();
      }
    } else {
      playList[ currentSong ] = null;
      println("Missing audio file:", file);
    }
    currentSong++;
  } //End File Loading
  currentSong=0;
  // Load sound effect (same data folder approach)
  file = sketchPath("data") + System.getProperty("file.separator") + soundEffectsDirectory + soundEffect1 + fileExtension_mp3; //Rewritting FILE
  java.io.File fse = new java.io.File(file);
  if ( fse.exists() ) {
    soundEffects[currentSong] = minim.loadFile( file );
    println("Loaded sound effect:", file);
  } else {
    soundEffects[currentSong] = null;
    println("Missing sound effect file:", file);
  }
 //
for ( int i=0; i<numberOfSongs; i++ ) {
    //ERROR Check Music and Sound Effect Variables
    //Thrown by commenting out FILE, playList[] or soundEffects[]
    if ( playList[i]==null || soundEffects[currentSong]==null) { //ERROR, play list is NULL
      //See FILE or minim.loadFile
      println("The Play List or Sound Effects did not load properly");
      printArray(playList);
      printArray(soundEffects);
      /* println("Music Pathway", musicDirectory);
       println("Full Music File Pathway", file);
       */
    } //End ERROR Check Music and Sound Effect Variables
  } //End File Loading
  //
} //End setup
//
//
void musicFunctionsKeyPressed() {
  // guard: ensure the current audio slot is loaded
  if ( playList == null || playList.length == 0 || playList[currentSong] == null ) {
    println("No audio loaded for currentSong (key press ignored)");
    return;
  }
  /*
   All Music Player Features are built out of these Minim AudioPlayer() functions
   .isPlaying()
   .isMuted()
   .loop(0), parameter is number of iterations after play
   .loop(), parameter is infinite interations
   .play(), parameter is built-in skip (milli-seconds or crystal-time)
   .pause()
   .rewind()
   .skip()
   .unmute()
   .mute()
   -
   Lesson Music Button Features based on single, double, and spamming taps
   - Play
   - Pause
   - Stop
   - Loop Once
   - Loop Infinite
   - Fast Forward
   - Fast Rewind
   - Mute
   - Next Song
   - Previous Song
   - Shuffle
   -
   - Advanced Buttons & Combinations
   - Play-Pause-Stop
   - Auto Play
   - Random Song
   */
  //if ( key=='P' || key=='p' ) playList[currentSong].play(); //Simple Play, no double tap possible
  //
  if ( key=='P' || key=='p' ) playList[currentSong].loop(0); //Simple Play, double tap possible
  /* Note: double tap is automatic rewind, no pause
   Symbol is two triangles
   This changes what the button might become after it is pressed
   */
  if ( key=='O' || key=='o' ) { // Pause
    //
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
    } else {
      playList[currentSong].play();
    }
  }
  //if ( key=='S' || key=='s' ) song[currentSong].pause(); //Simple Stop, no double taps
  //
  if ( key=='S' || key=='s' ) {
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause(); //single tap
    } else {
      playList[currentSong].rewind(); //double tap
    }
  }
  if ( key=='L' || key=='l' ) playList[currentSong].loop(1); // Loop ONCE: Plays, then plays again, then stops & rewinds
  if ( key=='K' || key=='k' ) playList[currentSong].loop(); // Loop Infinitely //Parameter: BLANK or -1
  if ( key=='F' || key=='f' ) playList[currentSong].skip( 10000 ); // Fast Forward, Rewind, & Play Again //Parameter: milliseconds
  if ( key=='R' || key=='r' ) playList[currentSong].skip( -10000 ); // Fast Reverse & Play //Parameter: negative numbers
  if ( key=='W' || key=='w' ) { // MUTE
    //
    //MUTE Behaviour: stops electricty to speakers, does not stop file
    //NOTE: MUTE has NO built-in PUASE button, NO built-in rewind button
    //ERROR: if song near end of file, user will not know song is at the end
    //Known ERROR: once song plays, MUTE acts like it doesn't work
    if ( playList[currentSong].isMuted() ) {
      //ERROR: song might not be playing
      //CATCH: ask .isPlaying() or !.isPlaying()
      playList[currentSong].unmute();
    } else {
      //Possible ERROR: Might rewind the song
      playList[currentSong].mute();
    }
  }
  if ( key==CODED || keyCode==ESC ) exit(); // QUIT //UP
  if ( key=='Q' || key=='q' ) exit(); // QUIT
  //
  if ( key=='N' || key=='n' ) { // NEXT //See .txt for starter hint
    if ( playList[currentSong].isPlaying() ) {
      playList[currentSong].pause();
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      playList[currentSong].play();
    } else {
      //
      playList[currentSong].rewind();
      //
      if ( currentSong==numberOfSongs-1 ) {
        currentSong = 0;
      } else {
        currentSong++;
      }
      // NEXT will not automatically play the song
      //song[currentSong].play();
    }
  }
  //if ( key=='B' || key=='b' ) ; // Previous, Back //Students to finish
  //
  if ( key=='Y' || key=='y' ) currentSong = int(random(numberOfSongs)); //random(0, numberOfSongs)
  //
  //if ( key=='S' || key=='s' ) ; // Shuffle - PLAY (Random)
  //Note: will randomize the currentSong number
  //Caution: random() is used very often
  //Question: how does truncating decimals affect returning random() floats
  /*
  if ( key=='' || key=='' ) ; // Play-Pause-STOP //Advanced, beyond single buttons
   - need to have basic GUI complete first
   */
  //
} //End Key Pressed
//
// End Music Subprogram
