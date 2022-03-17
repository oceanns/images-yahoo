//global variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio, imageHeightRatio;
int largerDimension, smallerDimension;
PImage pic;
//
fullScreen();
if (width >= height) { 
  largerDimension = width; 
  smallerDimension = height;
} else  { 
  largerDimension = height; 
  smallerDimension = width;
}
println (smallerDimension, largerDimension);
//fullscreen();
//population
pic = loadImage("frog-720.jpg"); //dimensions ?, ?
imageWidthRatio = float (largerDimension / largerDimension); //larger # for aspect ratio
println(imageWidthRatio);
imageHeightRatio = float ( smallerDimension / largerDimension); //similar to style="height:auto"
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageHeightRatio;

//
rect(imageX, imageY, imageWidth, imageHeight);
//image(pic, imageX, imageY, imageWidth, imageHeight);
