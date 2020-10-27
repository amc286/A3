float heading;
float x;
float y;
float speed = 1;
float thickness = 5;

float r = 128;
float g = 128;
float b = 128;

float prevLeftX;
float prevLeftY;
float prevRightX;
float prevRightY;

PFont f;
int counter;
String message = "The magician pulls handkerchiefs from her throat\nuntil the rope of knotted silk ends, and she\n\n-she keeps going";


void setup() {
  size(626, 438);
  noSmooth();
  frameRate(500);
  background(255);
  f = createFont("OpenDyslexic",15,true);
  textFont(f, 22);
}

void draw() {

  heading += sin(radians(frameCount))*1;

  r += random(-10, 10);
  g += random(-10, 10);
  b = constrain(b, 0, 256);

  r = constrain(r, 0, 256);
  g = constrain(g, 0, 256);
  b += random(-10, 10);

  x += cos(radians(heading))*speed;
  y += sin(radians(heading))*speed;

  if (x < 0) {
    x = width;
    prevLeftX += width;
    prevRightX += width;
  }
  if (x > width) {
    x = 0;
    prevLeftX -= width;
    prevRightX -= width;
  }

  if (y < 0) {
    y = height;
    prevLeftY += height;
    prevRightY += height;
  }
  if (y > height) {
    y = 0;
    prevLeftY -= height;
    prevRightY -= height;
  }


  float leftX = x + cos(radians(heading-90))*thickness;
  float leftY = y + sin(radians(heading-90))*thickness;

  float rightX = x + cos(radians(heading+90))*thickness;
  float rightY = y + sin(radians(heading+90))*thickness;

  noStroke();
  fill(r, g, b);

  beginShape();
  vertex(prevLeftX, prevLeftY);
  vertex(leftX, leftY);
  vertex(rightX, rightY);
  vertex(prevRightX, prevRightY);
  endShape(CLOSE);

  prevLeftX = leftX;
  prevLeftY = leftY;
  prevRightX = rightX;
  prevRightY = rightY;
  
  fill(0);
  typewriteText();

}
 
void typewriteText(){
  if (counter < message.length())
    counter++;
  text(message.substring(0, counter), 10, 160, width, height);

}
