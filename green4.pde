float blackX;
float blackY;

float blacX;
float blacY;

float blaX;
float blaY;

float blX;
float blY;

float bX;
float bY;

float whiteX;
float whiteY;

float whitX;
float whitY;

float whiX;
float whiY;

float whX;
float whY;

float wX;
float wY;

PImage lungs;
PFont f;
String message1 = "This smog is thick enough      to turn my lungs gummy";

void setup() {
  size(626, 438);
  f = createFont("OpenDyslexic",20,true);
  
  blackX = width*.3;
  blackY = height/2;
  
  blacX = width*.35;
  blacY = height/2;
  
  blaX = width*.40;
  blaY = height/2;
  
  blX = width*.25;
  blY = height/2;
  
  bX = width*.25;
  bY = height/2;

  whiteX = width*.6;
  whiteY = height/2;
  
  whitX = width*.65;
  whitY = height/2;
  
  whiX = width*.75;
  whiY = height/2;
  
  whX = width*.7;
  whY = height/2;
  
  wX = width*.65;
  wY = height/2;
  
  lungs = loadImage("lungs.png");

  background(255);
  
  frameRate(1000);
}

void draw() {

  fill(100);
  textFont(f);
  text(message1, 6, 40);
  imageMode(CENTER);
  image(lungs, 313, 219);
  stroke(100);
  
  blackX += random(-1, 1);
  blackY += random(-1, 1);
    
  if(blackX < 0){
    blackX = width;
  }
  if(blackX > width){
    blackX = 0;
  }

  if(blackY < 0){
    blackY = height;
  }
  if(blackY > height){
    blackY = 0;
  }
  
  point(blackX, blackY);
  
    blacX += random(-1, 1);
  blacY += random(-1, 1);
    
  if(blacX < 0){
    blacX = width;
  }
  if(blacX > width){
    blacX = 0;
  }

  if(blacY < 0){
    blacY = height;
  }
  if(blacY > height){
    blacY = 0;
  }
  
  point(blacX, blacY);
  
     blaX += random(-1, 1);
  blaY += random(-1, 1);
    
  if(blaX < 0){
    blaX = width;
  }
  if(blaX > width){
    blaX = 0;
  }

  if(blaY < 0){
    blaY = height;
  }
  if(blaY > height){
    blaY = 0;
  }
  
  point(blaX, blaY);
  
       blX += random(-1, 1);
  blY += random(-1, 1);
    
  if(blX < 0){
    blX = width;
  }
  if(blX > width){
    blX = 0;
  }

  if(blY < 0){
    blY = height;
  }
  if(blY > height){
    blY = 0;
  }
  
  point(bX, bY);
  
         bX += random(-1, 1);
  bY += random(-1, 1);
    
  if(bX < 0){
    bX = width;
  }
  if(bX > width){
    bX = 0;
  }

  if(bY < 0){
    bY = height;
  }
  if(bY > height){
    bY = 0;
  }
  
  point(bX, bY);
  
  whiteX += random(-1, 1);
  whiteY += random(-1, 1);
  
  if(whiteX < 0){
    whiteX = width;
  }
  if(whiteX > width){
    whiteX = 0;
  }
  
  if(whiteY < 0){
    whiteY = height;
  }
  if(whiteY > height){
    whiteY = 0;
  }  
  
  point(whiteX, whiteY);
  
    whitX += random(-1, 1);
  whitY += random(-1, 1);
  
  if(whitX < 0){
    whitX = width;
  }
  if(whitX > width){
    whitX = 0;
  }
  
  if(whitY < 0){
    whitY = height;
  }
  if(whitY > height){
    whitY = 0;
  }  
  
  point(whitX, whitY);
  
      whiX += random(-1, 1);
  whiY += random(-1, 1);
  
  if(whiX < 0){
    whiX = width;
  }
  if(whiX > width){
    whiX = 0;
  }
  
  if(whiY < 0){
    whiteY = height;
  }
  if(whiY > height){
    whiY = 0;
  }  
  
  point(whiX, whiY);
  
       whX += random(-1, 1);
  whY += random(-1, 1);
  
  if(whX < 0){
    whX = width;
  }
  if(whX > width){
    whX = 0;
  }
  
  if(whY < 0){
    whY = height;
  }
  if(whY > height){
    whY = 0;
  }  
  
  point(wX, wY);
  
         wX += random(-1, 1);
  wY += random(-1, 1);
  
  if(wX < 0){
    wX = width;
  }
  if(wX > width){
    wX = 0;
  }
  
  if(wY < 0){
    wY = height;
  }
  if(wY > height){
    wY = 0;
  }  
  
  point(wX, wY);
  
}
