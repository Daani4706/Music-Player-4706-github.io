/* Full Music Player & GUI Combined
 - DIVs, Images, Buttons, and Minim Music
 - Original variable names preserved
 */

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// ===== GLOBAL VARIABLES =====
Minim minim;
int numberOfSongs = 3;
int numberOfSoundEffects = 1;
AudioPlayer[] playList = new AudioPlayer[numberOfSongs];
AudioPlayer[] soundEffects = new AudioPlayer[numberOfSoundEffects];
int currentSong = 0;

// App dimensions
int appWidth, appHeight;

// DIV variables
int numberOfDIVs = 4;
float[] stringMainX = new float[numberOfDIVs];
float[] stringMainY = new float[numberOfDIVs];
float[] stringMainWidth = new float[numberOfDIVs];
float[] stringMainHeight = new float[numberOfDIVs];
String[] text = new String[numberOfDIVs];
PFont titleFont;
float fontSize;
float CorbelBoldItalicAspectRatio = 1.0;
color purpleInk = #F0C6FF;
color resetInk = #FFFFFF;

// BUTTON variables
float closeX, closeY, closeWidth, closeHeight;
float closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2;
float closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2;

float playSongX, playSongY, playSongWidth, playSongHeight;
float playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3;
boolean playButton = false;

// IMAGE variables
int numberOfImages = 2;
PImage[] image = new PImage[numberOfImages];
float imageX, imageY, imageWidth, imageHeight;
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];
int[] imageW = new int[numberOfImages];
int[] imageH = new int[numberOfImages];

// ===== SETUP =====
void setup() {
  fullScreen(); // Or size(900, 500) for testing
  appWidth = width;
  appHeight = height;

  // --- DIVS setup ---
  stringMainX[0] = appWidth * 0.5/28.0;
  stringMainY[0] = appHeight * 1/17.0;
  stringMainWidth[0] = appWidth * 5.2/28.0;
  stringMainHeight[0] = appHeight * 2/17.0;
  
  stringMainX[1] = appWidth * 6.2/28.0;
  stringMainY[1] = appHeight * 1/17.0;
  stringMainWidth[1] = appWidth * 8.3/28.0;
  stringMainHeight[1] = appHeight * 2/17.0;
  
  stringMainX[2] = appWidth * 9.9/28.0;
  stringMainY[2] = appHeight * 3.2/17.0;
  stringMainWidth[2] = appWidth * 14.5/28.0;
  stringMainHeight[2] = appHeight * 1/17.0;
  
  stringMainX[3] = appWidth * 9.9/28.0;
  stringMainY[3] = appHeight * 4.7/17.0;
  stringMainWidth[3] = appWidth * 14.5/28.0;
  stringMainHeight[3] = appHeight * 1/17.0;

  text[0] = "Lyrics";
  text[1] = "Information of the song";
  text[2] = "Artist Name";
  text[3] = "Song Name";

  // Font setup
  fontSize = 84;
  titleFont = createFont("Corbel Bold Italic", fontSize);
  CorbelBoldItalicAspectRatio = fontSize / stringMainHeight[0];
  
  // --- BUTTONS setup ---
  closeX = appWidth * 24.7/28.0;
  closeY = appHeight * 1/17.0;
  closeWidth = appWidth * 2/28.0;
  closeHeight = appHeight * 2/17.0;
  closelineLine1X1 = closeX + closeWidth * 1/4;
  closelineLine1Y1 = closeY + closeHeight * 1/4;
  closelineLine1X2 = closeX + closeWidth * 3/4;
  closelineLine1Y2 = closeY + closeHeight * 3/4;
  closelineLine2X1 = closeX + closeWidth * 3/4;
  closelineLine2Y1 = closeY + closeHeight * 1/4;
  closelineLine2X2 = closeX + closeWidth * 1/4;
  closelineLine2Y2 = closeY + closeHeight * 3/4;

  playSongX = appWidth * 11.3/28.0;
  playSongY = appHeight * 13/17.0;
  playSongWidth = appWidth * 3/28.0;
  playSongHeight = appHeight * 3/17.0;
  playSongX1 = playSongX + playSongWidth * 1/4;
  playSongY1 = playSongY + playSongHeight * 1/4;
  playSongX2 = playSongX + playSongWidth * 3/4;
  playSongY2 = playSongY + playSongHeight * 1/2;
  playSongX3 = playSongX + playSongWidth * 1/4;
  playSongY3 = playSongY + playSongHeight * 3/4;

  // --- IMAGE setup ---
  imageX = appWidth * 0.5/28.0;
  imageY = appHeight * 3.2/17.0;
  imageWidth = appWidth * 9/28.0;
  imageHeight = appHeight * 8.3/17.0;

  String upArrow = "../../";
  String folder = "Lesson Dependancy Folder/Images/";
  String[] fileName = {"Butterfly", "Cherry"};
  String[] fileExtension = {".jpg", ".jpg"};

  imageW[0] = 7392; imageH[0] = 5568;
  imageW[1] = 6720; imageH[1] = 4480;

  for (int i = 0; i < numberOfImages; i++) {
    String imagePathway = upArrow + folder + fileName[i] + fileExtension[i];
    image[i] = loadImage(imagePathway);
    if (image[i] == null) image[i] = loadImage("Old man portrait.png");
    float aspect = (imageW[i] >= imageH[i]) ? float(imageW[i])/float(imageH[i]) : float(imageH[i])/float(imageW[i]);
    imageWidthAdjusted[i] = imageWidth;
    imageHeightAdjusted[i] = imageWidthAdjusted[i]/aspect;
    while (imageHeightAdjusted[i] > imageHeight) {
      imageWidthAdjusted[i] *= 0.99;
      imageHeightAdjusted[i] = imageWidthAdjusted[i]/aspect;
    }
  }

  // --- MUSIC setup ---
  minim = new Minim(this);
  String musicFolder = "Music/";
  String soundEffectsFolder = "Sound Effect/";
  String fileExtension_mp3 = ".mp3";
  String[] songName = {"Cheri Cheri Lady", "Cheap Thrills", "Happy Nation"};

  for (int i = 0; i < numberOfSongs; i++) {
    playList[i] = minim.loadFile("../../" + musicFolder + songName[i] + fileExtension_mp3);
  }
  soundEffects[0] = minim.loadFile("../../" + musicFolder + soundEffectsFolder + "Spring_Attic_Door.mp3");
}

// ===== DRAW LOOP =====
void draw() {
  background(0); // clear screen

  // --- DRAW DIVS ---
  for (int i = 0; i < numberOfDIVs; i++) {
    rect(stringMainX[i], stringMainY[i], stringMainWidth[i], stringMainHeight[i]);
    fill(purpleInk);
    textFont(titleFont, stringMainHeight[i]*CorbelBoldItalicAspectRatio);
    textAlign(CENTER, CENTER);
    text(text[i], stringMainX[i], stringMainY[i], stringMainWidth[i], stringMainHeight[i]);
    fill(resetInk);
  }

  // --- DRAW IMAGES ---
  for (int i = 0; i < numberOfImages; i++) {
    float centeredX = imageX + (imageWidth - imageWidthAdjusted[i]) / 2;
    float centeredY = imageY + (imageHeight - imageHeightAdjusted[i]) / 2;
    rect(imageX, imageY, imageWidth, imageHeight);
    image(image[i], centeredX, centeredY, imageWidthAdjusted[i], imageHeightAdjusted[i]);
  }

  // --- DRAW BUTTONS ---
  // Quit button
  if (mouseX > closeX && mouseX < closeX + closeWidth &&
      mouseY > closeY && mouseY < closeY + closeHeight) {
    fill(255, 0, 0);
  } else fill(200);
  rect(closeX, closeY, closeWidth, closeHeight);
  line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
  line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);

  // Play button
  if (mouseX > playSongX && mouseX < playSongX + playSongWidth &&
      mouseY > playSongY && mouseY < playSongY + playSongHeight) {
    fill(100, 255, 100);
  } else fill(0, 200, 0);
  rect(playSongX, playSongY, playSongWidth, playSongHeight);
  fill(255);
  triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
}

// ===== MOUSE PRESSED =====
void mousePressed() {
  // Quit button
  if (mouseX > closeX && mouseX < closeX + closeWidth &&
      mouseY > closeY && mouseY < closeY + closeHeight) exit();

  // Play button
  if (mouseX > playSongX && mouseX < playSongX + playSongWidth &&
      mouseY > playSongY && mouseY < playSongY + playSongHeight) {
    if (!playList[currentSong].isPlaying()) playList[currentSong].play();
    else playList[currentSong].pause();
  }
}

// ===== KEY PRESSED =====
void keyPressed() {
  if (key=='P' || key=='p') playList[currentSong].loop(0);
  if (key=='O' || key=='o') {
    if (playList[currentSong].isPlaying()) playList[currentSong].pause();
    else playList[currentSong].play();
  }
  if (key=='S' || key=='s') {
    if (playList[currentSong].isPlaying()) playList[currentSong].pause();
    else playList[currentSong].rewind();
  }
  if (key=='N' || key=='n') {
    playList[currentSong].pause();
    playList[currentSong].rewind();
    currentSong = (currentSong+1) % numberOfSongs;
    playList[currentSong].play();
  }
}
