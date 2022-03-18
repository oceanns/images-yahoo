//global variables
float imageX, imageY, imageWidth, imageHeight, imageWidthRatio=0.0, imageHeightRatio=0.0;
float picWidth, picHeight, largerDimension, smallerDimension;
PImage pic;
Boolean widthLarger=false, heightLarger=false;
//
fullScreen();
//fullscreen();
//population
pic=loadImage("frog-720.jpg"); //dimensions 720, 406
picWidth = 720.0;
picHeight = 406.0;
if (picWidth >= picHeight) { 
  largerDimension = picWidth; 
  smallerDimension = picHeight;
  widthLarger = true;
} else  { 
  largerDimension = picHeight; 
  smallerDimension = picWidth;
  heightLarger = true;
}
println(smallerDimension, largerDimension);

if( widthLarger == true )imageWidthRatio = largerDimension / largerDimension;
if( widthLarger == true )imageHeightRatio = smallerDimension / largerDimension;
if( heightLarger == true) imageWidthRatio = smallerDimension / largerDimension;
if( heightLarger == true) imageHeightRatio = largerDimension / largerDimension;
println(imageWidthRatio, imageHeightRatio);

println(imageWidthRatio, imageHeightRatio);
imageHeightRatio = smallerDimension / largerDimension; //similar to style="height:auto"
imageX = width*0;
imageY = height*0;
imageWidth = width*imageWidthRatio;
imageHeight = height*imageHeightRatio;
if (imageWidth > width) println ("ERROR: IMAGE TOO WIDE");
if(imageHeight > height) println ("ERROR:  IMAGE TOO HIGH");
//
rect(imageX, imageY, imageWidth, imageHeight);
image (pic,imageX, imageY, imageWidth, imageHeight);
