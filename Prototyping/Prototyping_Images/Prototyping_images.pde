/* Aspect Ratio: Only Demonstration
 - Butterfly
 */
//
//Display
fullScreen(); //Landscape
//size(1280/960); //Portrait
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
//Population Center
float center1X = imageX + (imageWidth  - imageWidthAdjusted1) / 2;
float center1Y = imageY + (imageHeight - imageHeightAdjusted1) / 2;
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
//Demonstrates alternate way to load an image without a Pathway
//
int imageWidth1 = 7392; //Hardcoded
int imageHeight1 = 5568; //Hardcoded
//Aspect Ratio
float image1AspectRatio_GreaterOne = ( imageWidth1 >= imageHeight1 ) ? float(imageWidth1)/float(imageHeight1) : float(imageHeight1)/float(imageWidth1) ; //Ternary Operator
//ERROR, int populating float: truncating-adding zeros, casting
/* Line Notes
 - Hardcoded Greater-Than-One Aspect Ratio, x or / >1 or <1
 - 2D information from Image, Aspect Ratio Number
 - Answers how to make image bigger or smaller
 - Computer calculated DIV width & height
 - Computer needs to compare image to DIV size difference
 */
//println("Testing for Decimals, formula using ints:", imageWidth1/imageHeight1);
//println("After casting added, Aspect Ratio >1:", image1AspectRatio_GreaterOne);
//Algorithm Decisions (choice)
float imageWidthAdjusted1 = imageWidth;
float imageHeightAdjusted1 = ( imageWidth1 >= imageWidth ) ? imageWidthAdjusted1 * image1AspectRatio_GreaterOne : imageWidthAdjusted1 / image1AspectRatio_GreaterOne ; //Ternary Operator
//Verification: looks good
if ( imageHeightAdjusted1 > imageHeight ) {
  println("Image doesn't fit, program ended ... Fatal Flaw, must be solved ... Image doesn't show.");
  //exit();
  int indexWhile = 0; //Local Variable to IF-Statement
  //**WHILE Loops can run infintely with an error if not controlled
  while ( imageHeightAdjusted1 > imageHeight ) {
    println ("Iteration of Percent WHILE Loop", indexWhile++); //prints the value, then adds one, order is important in AP
    if ( indexWhile < 10000) {
    //Checking Image Size
    } else {
      //ERROR: Infinite Loop
      println("ERROR: infinite loop, Image Percent WHILE, value:", indexWhile);
     exit(); // doesn't work, must force WHILE Stop
     imageHeightAdjusted1 = imageHeight; //makes WHILE False, stops WHILE
    } // End Check infinite loop
    //Image Adjustment Percent v Pixel
    imageWidthAdjusted1 *= 0.99; // -= 1
    imageHeightAdjusted1 = imageWidthAdjusted1/image1AspectRatio_GreaterOne;
    //
    if (imageWidth > imageHeight){
    imageWidthAdjusted1 += imageWidth - imageWidthAdjusted1; 
    } else {
       imageHeightAdjusted1 += imageWidth - imageHeightAdjusted1;
    }
  } //End WHILE
  //
} // End IF
//
//DIV
 rect(imageX, imageY, imageWidth, imageHeight);
//
image(image1, center1X, center1Y, imageWidthAdjusted1, imageHeightAdjusted1);

//image( image1,imageX, imageY, imageWidth, imageHeight);
image( image1, imageX, imageY, imageWidthAdjusted1, imageHeightAdjusted1 );
//
//End Program
