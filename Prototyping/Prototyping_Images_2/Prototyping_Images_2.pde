/* Multiple Images
 - Using your variable names
 - Keeping teacher's array logic
 */
//
fullScreen(); //Landscape
// Display
size(500, 100); //Portrait, testing smaller DIVs ONLY
int appWidth = width;
int appHeight = height;
//
// Population (box for images)
float imageX = appWidth * 0.5/28.0;
float imageY = appHeight * 3.2/17.0;
float imageWidth = appWidth * 9/28.0;
float imageHeight = appHeight * 8.3/17.0;
//
// Image Aspect Ratio Vars & Algorithm
int numberOfImages = 2; 
int i = 0; // 
/* Index Legend
 i=0 // Butterfly
 i=1 // Cherry
 */
//
// Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancy Folder/Images/";
String[] fileName = new String[numberOfImages];
fileName[0] = "Butterfly"; 
fileName[1] = "Cherry"; 
String[] fileExtension = new String[numberOfImages];
fileExtension[0] = ".jpg"; 
fileExtension[1] = ".jpg"; 
String[] imagePathway = new String[numberOfImages];
imagePathway[i] = upArrow + folder + fileName[i] + fileExtension[i];
//
// Image Loading & Aspect Ratio
PImage[] image = new PImage[numberOfImages];
image[i] = loadImage(imagePathway[i]);
PImage errorImage = loadImage("Old man portrait.png"); // fallback
if (image[i] == null) {
  println("NullPointerException on Image ...");
  image[i] = errorImage;
  exit();
}
//
// Hardcoded Image Dimensions
int[] imageW = new int[numberOfImages];
int[] imageH = new int[numberOfImages];
imageW[0] = 7392; 
imageH[0] = 5568; 
imageW[1] = 6720; 
imageH[1] = 4480; 
//
// Aspect Ratio
float imageAspectRatio_GreaterOne =
  (imageW[i] >= imageH[i]) ?
  float(imageW[i]) / float(imageH[i]) :
  float(imageH[i]) / float(imageW[i]);
//
// Adjusted Image Size
float[] imageWidthAdjusted = new float[numberOfImages];
float[] imageHeightAdjusted = new float[numberOfImages];
imageWidthAdjusted[i] = imageWidth;
imageHeightAdjusted[i] = imageWidthAdjusted[i] / imageAspectRatio_GreaterOne;
//
// Verification & Scaling
if (imageHeightAdjusted[i] > imageHeight) {
  while (imageHeightAdjusted[i] > imageHeight) {
    imageWidthAdjusted[i] *= 0.99;
    imageHeightAdjusted[i] = imageWidthAdjusted[i] / imageAspectRatio_GreaterOne;
  }
}
//
// Centering inside the box
float centeredX = imageX + (imageWidth - imageWidthAdjusted[i]) / 2;
float centeredY = imageY + (imageHeight - imageHeightAdjusted[i]) / 2;
//
// Draw Box
rect(imageX, imageY, imageWidth, imageHeight);
//
// Draw Image
image(image[i], centeredX, centeredY,
      imageWidthAdjusted[i], imageHeightAdjusted[i]);
//
// End Program
