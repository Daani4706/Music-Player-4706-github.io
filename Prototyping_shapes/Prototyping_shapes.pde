fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float playlistX = appWidth * 9.9/28.0;
float playlistY = appHeight * 8/17.0;
float playlistWidth = appWidth * 3/28.0;
float playlistHeight = appHeight * 3/17.0;
//
float equalizerX = appWidth * 14.2/28.0;
float equalizerY = appHeight * 8/17.0;
float equalizerWidth = appWidth * 3/28.0;
float equalizerHeight = appHeight * 3/17.0;
//
float downloadX = appWidth * 18.4/28.0;
float downloadY = appHeight * 8/17.0;
float downloadWidth = appWidth * 3/28.0;
float downloadHeight = appHeight * 3/17.0;
//
float shareX = appWidth * 22.5/28.0;
float shareY = appHeight * 8/17.0;
float shareWidth = appWidth * 3/28.0;
float shareHeight = appHeight * 3/17.0;
//
float shuffleX = appWidth * 18.5/28.0;
float shuffleY = appHeight * 13/17.0;
float shuffleWidth = appWidth * 3/28.0;
float shuffleHeight = appHeight * 3/17.0;
//
float pauseX = appWidth * 14.9/28.0;
float pauseY = appHeight * 13/17.0;
float pauseWidth = appWidth * 3/28.0;
float pauseHeight = appHeight * 3/17.0;
//
float playSongX = appWidth * 11.3/28.0;
float playSongY = appHeight * 13/17.0;
float playSongWidth = appWidth * 3/28.0;
float playSongHeight = appHeight * 3/17.0;
// Triangle
float playSongX1 = playSongX + playSongWidth * 1/4;
float playSongY1 = playSongY + playSongHeight * 1/4;
float playSongX2 = playSongX + playSongWidth * 3/4;
float playSongY2 = playSongY + playSongHeight * 1/2;
float playSongX3 = playSongX + playSongWidth * 1/4;
float playSongY3 = playSongY + playSongHeight * 3/4;
//
float skipNextX = appWidth * 7.7/28.0;
float skipNextY = appHeight * 13/17.0;
float skipNextWidth = appWidth * 3/28.0;
float skipNextHeight = appHeight * 3/17.0;
// Triangle
float skipNextX1 = skipNextX + skipNextWidth * 1/4;
float skipNextY1 = skipNextY + skipNextHeight * 1/4;
float skipNextX2 = skipNextX + skipNextWidth * 3/4;
float skipNextY2 = skipNextY + skipNextHeight * 1/2;
float skipNextX3 = skipNextX + skipNextWidth * 1/4;
float skipNextY3 = skipNextY + skipNextHeight * 3/4;
// Line points 
float skipNextLineX1 = skipNextX + skipNextWidth * 1/4;
float skipNextLineY1 = skipNextY + skipNextHeight * 1/4;
float skipNextLineX2 = skipNextX + skipNextWidth * 3/4;
float skipNextLineY2 = skipNextY + skipNextHeight * 3/4;
//
float rewindX = appWidth * 4.1/28.0;
float rewindY = appHeight * 13/17.0;
float rewindWidth = appWidth * 3/28.0;
float rewindHeight = appHeight * 3/17.0;
// Triangle points
float rewindX1 = rewindX + rewindWidth * 1/4;
float rewindY1 = rewindY + rewindHeight * 2/4;
float rewindX2 = rewindX + rewindWidth * 3/4;
float rewindY2 = rewindY + rewindHeight * 1/4;
float rewindX3 = rewindX + rewindWidth * 3/4;
float rewindY3 = rewindY + rewindHeight * 3/4;
// line 
float rewindLineX1 = rewindX + rewindWidth
float rewindLineY1 = rewindY + rewindHeight
float rewindLineX2 = 
float rewindLineY2 = 
//
float stopDIVX = appWidth * 0.5/28.0;
float stopDIVY = appHeight * 13/17.0;
float stopDIVWidth = appWidth * 3/28.0;
float stopDIVHeight = appHeight * 3/17.0;
//square
float stopMBX = stopDIVX + stopDIVWidth * 1/4;
float stopMBY = stopDIVY + stopDIVHeight * 1/4;
float stopMBWidth = stopDIVWidth * 2/4;
float stopMBHeight = stopDIVHeight * 2/4;

//
//rect(playlistX, playlistY, playlistWidth, playlistHeight);
//rect(equalizerX, equalizerY, equalizerWidth, equalizerHeight);
//rect(downloadX, downloadY, downloadWidth, downloadHeight);
//rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
//rect(pauseX, pauseY, pauseWidth, pauseHeight);
//rect(playSongX, playSongY, playSongWidth, playSongHeight);
//triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
//rect(skipNextX, skipNextY, skipNextWidth, skipNextHeight);
//line(skipNextX1, skipNextY1, skipNextX2, skipNextY2);
//triangle(skipNextX1, skipNextY1, skipNextX2, skipNextY2, skipNextX3, skipNextY3);
rect(rewindX, rewindY, rewindWidth, rewindHeight);
line(rewindLineineX1, rewindLineY1, rewindLineX2, rewindLineY2);
//triangle(rewindX1, rewindY1, rewindX2, rewindY2, rewindX3, rewindY3);
//rect(stopDIVX, stopDIVY, stopDIVWidth, stopDIVHeight);
//rect(stopMBX, stopMBY, stopMBWidth, stopMBHeight);
//
//
//rect(imageX, imageY, imageWidth, imageHeight);
//square(nameX, nameY, nameDimension);
//line(nameX1, nameY1, nameX2, nameY2);
//triangle(nameX1, nameY1, nameX2, nameY2, nameX3, nameY3);
