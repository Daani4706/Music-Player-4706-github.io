/*Aspect Radio: Bike Only Demonstration
-Butterfly
*/
//
//Display
fullScreen(); // landscape
//size(1280/960); // Portrait
int appWidth = displayWidth; //width
int appHeight = displayHeight; // height
//println("Display VARS:", "appWidth:"+appWidth, "appHeight:"+appHeight, "\n\t\t\t\t\t\t\tFullScreen, displayWidth:"+displayWidth, "displayHeight:"+displayHeight, "width:"+width, "height:"+height);
//
//
//Population
float imageX = appWidth * 0.5/28.0;
float imageY = appHeight * 3.2/17.0;
float imageWidth = appWidth * 9/28.0;
float imageHeight = appHeight * 8.3/17.0;
//
//Image Aspect Radio Vars & Algorithm
//Directory or Pathway, Concatenation
String upArrow = "../../";
String folder = "Lesson Dependancy Folder/Images/";
String Butterfly = "Butterfly"; 
String fileExtensionJPG = ".jpg"; 
String imagePathway1 = upArrow + folder + Butterfly + fileExtensionJPG;
//println("Butterfly Pathway:" , imagePathway1);
//Images Loading & Aspect Ratio
PImage image1 = loadImage( imagePathway1 );
int imageWidth1 = 1280;//Hardcoded
int imageHeight1 = 960;//Hardcoded
//Aspect Ratio
float image1AspectRadio_LessOne = ( imageWidth1 >= imageHeight1) ? imageWidth1/imageHeight1 : imageHeight1/imageWidth1; //Ternary Operator
println (image1AspectRadio_LessOne); 
//
//DIV
rect(imageX, imageY, imageWidth, imageHeight);
//
image( image1, imageX, imageY, imageWidth, imageHeight);
