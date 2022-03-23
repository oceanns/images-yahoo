//Gloabal Variables
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2;
color greenfrog=#3FD883;
//
//Geometry: display and orientation (landscape, portrait, and square)
fullScreen();
//
//population variables
pic1=loadImage("tree-frog-portrait-412x550.jpg"); //dimensions: width and height
pic2=loadImage("Tree_Frog_900x600.jpg");
//
//Aspect Ratio Calculations
int pic1Width = 412;
int pic1Height = 550;
int pic2Width = 900;
int pic2Height = 600;
int largerPic1Dimension, smallerPic1Dimension, largerPic2Dimension, smallerPic2Dimension;
float imageWidthRatioPic1=0.0, imageHeightRatioPic1=0.0, imageWidthRatioPic2=0.0, imageHeightRatioPic2=0.0; 
Boolean widthPic1Larger=false, heightPic1Larger=false, widthPic2Larger=false, heightPic2Larger=false;
//
if ( pic1Width >= pic1Height ) { 
  largerPic1Dimension = pic1Width;
  smallerPic1Dimension = pic1Height;
  widthPic1Larger = true;
} else { 
  largerPic1Dimension = pic1Height;
  smallerPic1Dimension = pic1Width;
  heightPic1Larger = true;
} 
//
if ( pic2Width >= pic2Height ) { 
  largerPic2Dimension = pic2Width;
  smallerPic2Dimension = pic2Height;
  widthPic2Larger = true;
} else { 
  largerPic2Dimension = pic2Height;
  smallerPic2Dimension = pic2Width;
  heightPic2Larger = true;
}
println (smallerPic1Dimension, largerPic1Dimension, smallerPic2Dimension, largerPic2Dimension);
//
if ( widthPic1Larger == true ) imageWidthRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
if ( widthPic1Larger == true ) imageHeightRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if ( heightPic1Larger == true ) imageWidthRatioPic1 = float (smallerPic1Dimension) / float (largerPic1Dimension);
if ( heightPic1Larger == true ) imageHeightRatioPic1 = float (largerPic1Dimension) / float (largerPic1Dimension);
if ( widthPic2Larger == true ) imageWidthRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
if ( widthPic2Larger == true ) imageHeightRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if ( heightPic2Larger == true ) imageWidthRatioPic2 = float (smallerPic2Dimension) / float (largerPic2Dimension);
if ( heightPic2Larger == true ) imageHeightRatioPic2 = float (largerPic2Dimension) / float (largerPic2Dimension);
println(imageWidthRatioPic1, imageHeightRatioPic1, imageWidthRatioPic2, imageHeightRatioPic2);
//
rectXPic1 = displayWidth*1/4;
rectYPic1 = displayHeight*0;
rectWidthPic1 = displayWidth*1/2;
rectHeightPic1 = displayHeight*1/2;
rectXPic2 = displayWidth*1/8;
rectYPic2 = displayHeight*1/2;
rectWidthPic2 = displayWidth*6/8;
rectHeightPic2 = displayHeight*1/2;
//
//Adjusted widths and heights to rectangle layouts
float pic1WidthAdjusted, pic1HeightAdjusted, pic2WidthAdjusted, pic2HeightAdjusted;
pic1WidthAdjusted = rectWidthPic1 * imageWidthRatioPic1;
pic1HeightAdjusted = rectHeightPic1 * imageHeightRatioPic1;
pic2WidthAdjusted = rectWidthPic2 * imageWidthRatioPic2;
pic2HeightAdjusted = rectHeightPic2 * imageHeightRatioPic2;
println(pic1Width, pic1Height, pic2Width, pic2Height);
println(pic1WidthAdjusted, pic1HeightAdjusted, pic1WidthAdjusted, pic1HeightAdjusted);
//rectangle layout and image drawing to canvas
//
fill(greenfrog);
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //for image 1
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); // for image 2
//Rectangle coords only
//image(pic1, rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); // for image 1
image(pic2, rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2);
//aspect ratio
image(pic1, rectXPic1, rectYPic1, pic1WidthAdjusted, pic1HeightAdjusted); // for image 1
//image(pic2, rectXPic2, rectYPic2, pic2WidthAdjusted, pic2HeightAdjusted);
//
