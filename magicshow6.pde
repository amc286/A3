int xPos=0;
int yPos=0;
PImage kettle;
PFont f;
int counter;
String message1 = "For the pastel Easter basket, the kettle\nof hawks instead of white doves";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  kettle = loadImage("kettle.png");
}

  
void draw() {
  background(255);
  image(kettle,300,yPos);
  yPos=yPos+3;
  image(kettle,250,yPos);
  yPos=yPos+2;
  
  
  fill(0);
  text(message1,10,35);
}
