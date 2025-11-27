/* Aspect Ratio: Only Demonstration
 - Butterfly
 */
//
//Display
fullScreen(); //Landscape
size(1280/960); //Portrait
int appWidth = width; //displayWidth
int appHeight = height; //displayHeight
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight);
//println("\t\t\t\tFullScreen, displayWidth:\t"+displayWidth, "\tdisplayHeight:\t"+displayHeight, "\n\t\t\t\tSize\t, width:\t\t"+width, "\height:\t\t"+height);
//
//Population
float imageX = appWidth * 0.5/28.0;
float imageY = appHeight * 3.2/17.0;
float imageWidth = appWidth * 9/28.0;
float imageHeight = appHeight * 8.3/17.0;
//
//Image Aspect Ratio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancy Folder/Images/";
String Butterfly = "Butterfly";
String fileExtensionJPG = ".jpg";
String imagePathway1 = upArrow + folder + Butterfly + fileExtensionJPG;
//println("Butterfly Pathway:", imagePathway1);
//Image Loading & Aspect Ratio
//
//Possible ERROR: NullPointerException on the Image
PImage errorImage = loadImage( "Old man portrait.png" );
PImage image1 = loadImage( imagePathway1 );
if ( image1 == null ) {
  println("NullPointerException on Image ... Spelling Mistake with Pathway Concatenation");
  image1 = errorImage;
  exit(); //handled whenever the computer uses this part or Memory
}
//Demonstrates alternate way to load an image without a pathway
//
int imageWidth1 = 1280; //Hardcoded
int imageHeight1 = 960; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
 - Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
 - 2D information from Image, Apsect Ratio Number
 - Answers how to make image bigger or smaller
 - Computer calculated DIV width & height
 - Computer needs to compare image to DIV size difference
 */
//println("Testing for Decimals, formula unsing ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageDivWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageDivWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageDivHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  while ( imageHeightAdjusted1>imageDivHeight ) {
    imageWidthAdjusted1 *= 0.99;
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
    //println("Inspection of percent decrase:", imageWidthAdjusted1, imageHeightAdjusted1, imageDivHeight);
  }
  //
}
//
//DIV
rect(imageX, imageY, imageWidth, imageHeight);
//

image( image1,imageX, imageY, imageWidth, imageHeight);
//
//End Program
