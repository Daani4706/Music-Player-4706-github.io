fullScreen(); //displayWidth //displayHeight
int appWidth = displayWidth;
int appHeight = displayHeight;
//
float closeX = appWidth * 24.7/28.0;
float closeY = appHeight * 1/17.0;
float closeWidth = appWidth * 2/28.0;
float closeHeight = appHeight * 2/17.0;
// line 1
float closelineLine1X1 = closeX + closeWidth * 1/4; 
float closelineLine1Y1 = closeY + closeHeight * 1/4;
float closelineLine1X2 = closeX + closeWidth * 3/4; 
float closelineLine1Y2 = closeY + closeHeight * 3/4;
// line 2
float closelineLine2X1 = closeX + closeWidth * 3/4; 
float closelineLine2Y1 = closeY + closeHeight * 1/4;
float closelineLine2X2 = closeX + closeWidth * 1/4; 
float closelineLine2Y2 = closeY + closeHeight * 3/4;
//
float lyricsX = appWidth * 0.5/28.0;
float lyricsY = appHeight * 1/17.0;
float lyricsWidth = appWidth * 5.2/28.0;
float lyricsHeight = appHeight * 2/17.0;
//
float infoX = appWidth * 6.2/28.0;
float infoY = appHeight * 1/17.0;
float infoWidth = appWidth * 8.3/28.0;
float infoHeight = appHeight * 2/17.0;
//
float artistNameX = appWidth * 9.9/28.0;
float artistNameY = appHeight * 3.2/17.0;
float artistNameWidth = appWidth * 14.5/28.0;
float artistNameHeight = appHeight * 1/17.0;
//
float songNameX = appWidth * 9.9/28.0;
float songNameY = appHeight * 4.7/17.0;
float songNameWidth = appWidth * 14.5/28.0;
float songNameHeight = appHeight * 1/17.0;
//
float trackTimeX = appWidth * 9.9/28.0;
float trackTimeY = appHeight * 6.6/17.0;
float trackTimeWidth = appWidth * 14.5/28.0;
float trackTimeHeight = appHeight * 0.2/17.0;
//
float imageX = appWidth * 0.5/28.0;
float imageY = appHeight * 3.2/17.0;
float imageWidth = appWidth * 8.3/28.0;
float imageHeight = appHeight * 8.3/17.0;
//
float totaltimeX = appWidth * 22.9/28.0;
float totaltimeY = appHeight * 6.8/17.0;
float totaltimeWidth = appWidth * 1.5/28.0;
float totaltimeHeight = appHeight * 0.5/17.0;
//
float timeRemainingX = appWidth * 9.9/28.0;
float timeRemainingY = appHeight * 6.8/17.0;
float timeRemainingWidth = appWidth * 1.5/28.0;
float timeRemainingHeight = appHeight * 0.5/17.0;
//
float playlistX = appWidth * 9.9/28.0;
float playlistY = appHeight * 8/17.0;
float playlistWidth = appWidth * 3/28.0;
float playlistHeight = appHeight * 3/17.0;
//Line points 1
float playlistLine1X  = playlistX + playlistWidth * 3/8;
float playlistLine1Y1 = playlistY + playlistHeight * 2/8;
float playlistLine1X2 = playlistX + playlistWidth * 6/8;
float playlistLine1Y2 = playlistY + playlistHeight * 2/8;
//Line points 2
float playlistLine2X  = playlistX + playlistWidth * 3/8;
float playlistLine2Y1 = playlistY + playlistHeight * 4/8;
float playlistLine2X2 = playlistX + playlistWidth * 6/8;
float playlistLine2Y2 = playlistY + playlistHeight * 4/8;
//Line points 3
float playlistLine3X  = playlistX + playlistWidth * 3/8;
float playlistLine3Y1 = playlistY + playlistHeight * 6/8;
float playlistLine3X2 = playlistX + playlistWidth * 6/8;
float playlistLine3Y2 = playlistY + playlistHeight * 6/8;
// Dots
float dotDiameter = playlistWidth * 1/12;
float dotX = playlistX + playlistWidth * 1/8;
float dotY1 = playlistLine1Y1;
float dotY2 = playlistLine2Y1;
float dotY3 = playlistLine3Y1;
//
float equalizerX = appWidth * 14.2/28.0;
float equalizerY = appHeight * 8/17.0;
float equalizerWidth = appWidth * 3/28.0;
float equalizerHeight = appHeight * 3/17.0;
// Line points 1
float equalizerLine1X1 = equalizerX + equalizerWidth * 2/8;
float equalizerLine1Y1 = equalizerY + equalizerHeight * 5/8;
float equalizerLine1X2 = equalizerX + equalizerWidth * 2/8;
float equalizerLine1Y2 = equalizerY + equalizerHeight * 6/8;
// Line points 2
float equalizerLine2X1 = equalizerX + equalizerWidth * 3/8;
float equalizerLine2Y1 = equalizerY + equalizerHeight * 3/8;
float equalizerLine2X2 = equalizerX + equalizerWidth * 3/8;
float equalizerLine2Y2 = equalizerY + equalizerHeight * 6/8;
// Line points 3
float equalizerLine3X1 = equalizerX + equalizerWidth * 4/8;
float equalizerLine3Y1 = equalizerY + equalizerHeight * 4/8;
float equalizerLine3X2 = equalizerX + equalizerWidth * 4/8;
float equalizerLine3Y2 = equalizerY + equalizerHeight * 6/8;
// Line points 4
float equalizerLine4X1 = equalizerX + equalizerWidth * 5/8;
float equalizerLine4Y1 = equalizerY + equalizerHeight * 3/8;
float equalizerLine4X2 = equalizerX + equalizerWidth * 5/8;
float equalizerLine4Y2 = equalizerY + equalizerHeight * 6/8;
// Line points 5
float equalizerLine5X1 = equalizerX + equalizerWidth * 6/8;
float equalizerLine5Y1 = equalizerY + equalizerHeight * 5/8;
float equalizerLine5X2 = equalizerX + equalizerWidth * 6/8;
float equalizerLine5Y2 = equalizerY + equalizerHeight * 6/8;
//
float downloadX = appWidth * 18.4/28.0;
float downloadY = appHeight * 8/17.0;
float downloadWidth = appWidth * 3/28.0;
float downloadHeight = appHeight * 3/17.0;
//Line 1 ponits
float arrowLine1X1 = downloadX + downloadWidth * 3/8; 
float arrowLine1Y1 = downloadY + downloadHeight * 2/8;
float arrowLine1X2 = downloadX + downloadWidth * 5/8; 
float arrowLine1Y2 = downloadY + downloadHeight * 2/8;
//Line 2 points
float arrowLine2X1 = downloadX + downloadWidth * 3/8; 
float arrowLine2Y1 = downloadY + downloadHeight * 2/8;
float arrowLine2X2 = downloadX + downloadWidth * 3/8; 
float arrowLine2Y2 = downloadY + downloadHeight * 4/8;
//Line3 points
float arrowLine3X1 = downloadX + downloadWidth * 5/8; 
float arrowLine3Y1 = downloadY + downloadHeight * 2/8;
float arrowLine3X2 = downloadX + downloadWidth * 5/8; 
float arrowLine3Y2 = downloadY + downloadHeight * 4/8;
//Triangle points
float downloadX1 = downloadX + downloadWidth * 2/8;
float downloadY1 = downloadY + downloadHeight * 4/8;
float downloadX2 = downloadX + downloadWidth * 6/8;
float downloadY2 = downloadY + downloadHeight * 4/8;
float downloadX3 = downloadX + downloadWidth * 4/8;
float downloadY3 = downloadY + downloadHeight * 6/8;
//
float shareX = appWidth * 22.5/28.0;
float shareY = appHeight * 8/17.0;
float shareWidth = appWidth * 3/28.0;
float shareHeight = appHeight * 3/17.0;
//Triangle points
float shareX1 = shareX + shareWidth * 4/8;
float shareY1 = shareY + shareHeight * 2/8;
float shareX2 = shareX + shareWidth * 3/8;
float shareY2 = shareY + shareHeight * 3/8;
float shareX3 = shareX + shareWidth * 5/8;
float shareY3 = shareY + shareHeight * 3/8;
//Line points D
float shareLineDX  = shareX + shareWidth * 4/8;
float shareLineDY1 = shareY + shareHeight * 3/8;
float shareLineDX2 = shareX + shareWidth * 4/8;
float shareLineDY2 = shareY + shareHeight * 5/8;
// Line points 1
float shareLine1X1 = shareX + shareWidth * 2/8; 
float shareLine1Y1 = shareY + shareHeight * 4/8;
float shareLine1X2 = shareX + shareWidth * 3/8; 
float shareLine1Y2 = shareY + shareHeight * 4/8;
// Line points 2
float shareLine2X1 = shareX + shareWidth * 2/8; 
float shareLine2Y1 = shareY + shareHeight * 4/8;
float shareLine2X2 = shareX + shareWidth * 2/8; 
float shareLine2Y2 = shareY + shareHeight * 6/8;
// Line points 3
float shareLine3X1 = shareX + shareWidth * 2/8; 
float shareLine3Y1 = shareY + shareHeight * 6/8;
float shareLine3X2 = shareX + shareWidth * 6/8; 
float shareLine3Y2 = shareY + shareHeight * 6/8;
// Line points 4 
float shareLine4X1 = shareX + shareWidth * 6/8; 
float shareLine4Y1 = shareY + shareHeight * 4/8;
float shareLine4X2 = shareX + shareWidth * 6/8; 
float shareLine4Y2 = shareY + shareHeight * 6/8;
// Line points 5 
float shareLine5X1 = shareX + shareWidth * 5/8; 
float shareLine5Y1 = shareY + shareHeight * 4/8;
float shareLine5X2 = shareX + shareWidth * 6/8; 
float shareLine5Y2 = shareY + shareHeight * 4/8;
//
float powerX = appWidth * 22.3/28.0;
float powerY = appHeight * 14.4/17.0;
float powerWidth = appWidth * 4.5/28.0;
float powerHeight = appHeight * 0.5/17.0;
//
float shuffleX = appWidth * 18.5/28.0;
float shuffleY = appHeight * 13/17.0;
float shuffleWidth = appWidth * 3/28.0;
float shuffleHeight = appHeight * 3/17.0;
// Line points1
float shuffleLine1X1 = shuffleX + shuffleWidth * 3/8; 
float shuffleLine1Y1 = shuffleY + shuffleHeight * 5/8;
float shuffleLine1X2 = shuffleX + shuffleWidth * 5/8; 
float shuffleLine1Y2 = shuffleY + shuffleHeight * 3/8;
// Line ponits 2
float shuffleLine2X1 = shuffleX + shuffleWidth * 5/8; 
float shuffleLine2Y1 = shuffleY + shuffleHeight * 5/8;
float shuffleLine2X2 = shuffleX + shuffleWidth * 3/8; 
float shuffleLine2Y2 = shuffleY + shuffleHeight * 3/8;
//
float triWidth = shuffleWidth * 1/16;
float triHeight = shuffleHeight * 1/12;
// Triangle points 1
float shuffle1X1 = shuffleLine1X2;                   
float shuffle1Y1 = shuffleLine1Y2 - triHeight / 2;    
float shuffle1X2 = shuffle1X1 + triWidth;             
float shuffle1Y2 = shuffleLine1Y2;                    
float shuffle1X3 = shuffleLine1X2;                     
float shuffle1Y3 = shuffleLine1Y2 + triHeight / 2;     
// Triangle points2
float shuffle2X1 = shuffleLine2X1;                   
float shuffle2Y1 = shuffleLine2Y1 - triHeight / 2;    
float shuffle2X2 = shuffle2X1 + triWidth;             
float shuffle2Y2 = shuffleLine2Y1;                   
float shuffle2X3 = shuffleLine2X1;                    
float shuffle2Y3 = shuffleLine2Y1 + triHeight / 2;   
//
float pauseX = appWidth * 14.9/28.0;
float pauseY = appHeight * 13/17.0;
float pauseWidth = appWidth * 3/28.0;
float pauseHeight = appHeight * 3/17.0;
// Line ponits 1
float pauseLine1X  = pauseX + pauseWidth * 1/4;
float pauseLine1Y1 = pauseY + pauseHeight * 1/4;
float pauseLine1X2 = pauseX + pauseWidth * 1/4;
float pauseLine1Y2 = pauseY + pauseHeight * 3/4;
// Line points 2
float pauseLine2X  = pauseX + pauseWidth * 3/4;
float pauseLine2Y1 = pauseY + pauseHeight * 1/4;
float pauseLine2X2 = pauseX + pauseWidth * 3/4;
float pauseLine2Y2 = pauseY + pauseHeight * 3/4;
//
float playSongX = appWidth * 11.3/28.0;
float playSongY = appHeight * 13/17.0;
float playSongWidth = appWidth * 3/28.0;
float playSongHeight = appHeight * 3/17.0;
// Triangle ponits
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
// Triangle points
float skipNextX1 = skipNextX + skipNextWidth * 1/4;
float skipNextY1 = skipNextY + skipNextHeight * 1/4;
float skipNextX2 = skipNextX + skipNextWidth * 3/4;
float skipNextY2 = skipNextY + skipNextHeight * 1/2;
float skipNextX3 = skipNextX + skipNextWidth * 1/4;
float skipNextY3 = skipNextY + skipNextHeight * 3/4;
// Line points 
float skipNextLineX1 = skipNextX + skipNextWidth * 3/4;
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
// Line points
float rewindLineX1 = rewindX + rewindWidth * 1/4;
float rewindLineY1 = rewindY + rewindHeight * 1/4;
float rewindLineX2 = rewindX + rewindWidth * 1/4;
float rewindLineY2 = rewindY + rewindHeight * 3/4;
//
float stopDIVX = appWidth * 0.5/28.0;
float stopDIVY = appHeight * 13/17.0;
float stopDIVWidth = appWidth * 3/28.0;
float stopDIVHeight = appHeight * 3/17.0;
// Square points
float stopMBX = stopDIVX + stopDIVWidth * 1/4;
float stopMBY = stopDIVY + stopDIVHeight * 1/4;
float stopMBWidth = stopDIVWidth * 2/4;
float stopMBHeight = stopDIVHeight * 2/4;
//
println(closeX, closeY, closeWidth, closeHeight);
rect(closeX, closeY, closeWidth, closeHeight);
line(closelineLine1X1, closelineLine1Y1, closelineLine1X2, closelineLine1Y2);
line(closelineLine2X1, closelineLine2Y1, closelineLine2X2, closelineLine2Y2);
rect(lyricsX, lyricsY, lyricsWidth, lyricsHeight);
rect(infoX, infoY, infoWidth, infoHeight);
rect(artistNameX, artistNameY, artistNameWidth, artistNameHeight);
rect(songNameX, songNameY, songNameWidth, songNameHeight);
rect(trackTimeX, trackTimeY, trackTimeWidth, trackTimeHeight);
rect(imageX, imageY, imageWidth, imageHeight);
rect(totaltimeX, totaltimeY, totaltimeWidth, totaltimeHeight);
rect(playlistX, playlistY, playlistWidth, playlistHeight);
line(playlistLine1X, playlistLine1Y1, playlistLine1X2, playlistLine1Y2);
line(playlistLine2X, playlistLine2Y1, playlistLine2X2, playlistLine2Y2);
line(playlistLine3X, playlistLine3Y1, playlistLine3X2, playlistLine3Y2);
ellipse(dotX, dotY1, dotDiameter, dotDiameter);
ellipse(dotX, dotY2, dotDiameter, dotDiameter);
ellipse(dotX, dotY3, dotDiameter, dotDiameter);
rect(equalizerX, equalizerY, equalizerWidth, equalizerHeight);
line(equalizerLine1X1, equalizerLine1Y1, equalizerLine1X2, equalizerLine1Y2);
line(equalizerLine2X1, equalizerLine2Y1, equalizerLine2X2, equalizerLine2Y2);
line(equalizerLine3X1, equalizerLine3Y1, equalizerLine3X2, equalizerLine3Y2);
line(equalizerLine4X1, equalizerLine4Y1, equalizerLine4X2, equalizerLine4Y2);
line(equalizerLine5X1, equalizerLine5Y1, equalizerLine5X2, equalizerLine5Y2);
rect(downloadX, downloadY, downloadWidth, downloadHeight);
line(arrowLine1X1, arrowLine1Y1, arrowLine1X2, arrowLine1Y2);
line(arrowLine2X1, arrowLine2Y1, arrowLine2X2, arrowLine2Y2);
line(arrowLine3X1, arrowLine3Y1, arrowLine3X2, arrowLine3Y2);
triangle(downloadX1, downloadY1, downloadX2, downloadY2, downloadX3, downloadY3);
rect(shareX, shareY, shareWidth, shareHeight);
triangle(shareX1, shareY1, shareX2, shareY2, shareX3, shareY3);
line(shareLineDX, shareLineDY1, shareLineDX2, shareLineDY2);
line(shareLine1X1, shareLine1Y1, shareLine1X2, shareLine1Y2);
line(shareLine2X1, shareLine2Y1, shareLine2X2, shareLine2Y2);
line(shareLine3X1, shareLine3Y1, shareLine3X2, shareLine3Y2);
line(shareLine4X1, shareLine4Y1, shareLine4X2, shareLine4Y2);
line(shareLine5X1, shareLine5Y1, shareLine5X2, shareLine5Y2);
rect(powerX, powerY, powerWidth, powerHeight);
rect(shuffleX, shuffleY, shuffleWidth, shuffleHeight);
line(shuffleLine1X1, shuffleLine1Y1, shuffleLine1X2, shuffleLine1Y2);
line(shuffleLine2X1, shuffleLine2Y1, shuffleLine2X2, shuffleLine2Y2);
triangle(shuffle1X1, shuffle1Y1, shuffle1X2, shuffle1Y2, shuffle1X3, shuffle1Y3);
triangle(shuffle2X1, shuffle2Y1, shuffle2X2, shuffle2Y2, shuffle2X3, shuffle2Y3);
rect(pauseX, pauseY, pauseWidth, pauseHeight);
line(pauseLine1X, pauseLine1Y1, pauseLine1X2, pauseLine1Y2);
line(pauseLine2X, pauseLine2Y1, pauseLine2X2, pauseLine2Y2);
rect(playSongX, playSongY, playSongWidth, playSongHeight);
triangle(playSongX1, playSongY1, playSongX2, playSongY2, playSongX3, playSongY3);
rect(skipNextX, skipNextY, skipNextWidth, skipNextHeight);
line(skipNextLineX1, skipNextLineY1, skipNextLineX2, skipNextLineY2);
triangle(skipNextX1, skipNextY1, skipNextX2, skipNextY2, skipNextX3, skipNextY3);
rect(rewindX, rewindY, rewindWidth, rewindHeight);
line(rewindLineX1, rewindLineY1, rewindLineX2, rewindLineY2);
triangle(rewindX1, rewindY1, rewindX2, rewindY2, rewindX3, rewindY3);
rect(stopDIVX, stopDIVY, stopDIVWidth, stopDIVHeight);
rect(stopMBX, stopMBY, stopMBWidth, stopMBHeight);
