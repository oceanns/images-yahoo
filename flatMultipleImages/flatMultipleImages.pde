//Gloabal Variables
PImage pic1, pic2;
float rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1, picX1, picY1, picWidth1, picHeight1;
float rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2, picX2, picY2, picWidth2, picHeight2;
int pic1Width, pic1Height, pic2Width, pic2Height;
//
//Geometry: display and orientation (landscape, portrait, and square)
//
//population
pic1=loadImage("tree-frog-portrait-412x550.jpg"); //dimensions: width and height
pic1Width = 412;
pic1Height = 550;
pic2=loadImage("Tree_Frog_900x600.jpg");
pic2Width = 900;
pic2Height = 600;
//
//Aspect Ratio Calculations
//
//rectangle layout and image drawing to canvas
rect(rectXPic1, rectYPic1, rectWidthPic1, rectHeightPic1); //for image 1
rect(rectXPic2, rectYPic2, rectWidthPic2, rectHeightPic2); // for image 2
image(pic1, picX1, picY1, picWidth1, picHeight1); // for image 1
image(pic2, picX2, picY2, picWidth2, picHeight2); // for image 2
//
//end program
