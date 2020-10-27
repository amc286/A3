int xPos=0;
int yPos=0;
PImage scuba;
PFont f;
int counter;
String message1 = "For the pastel Easter basket, the kettle\nof hawks instead of white doves, the fishbowl\nand ceramic scuba diver who stands atop glow-\nin-the-dark rocks";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  scuba = loadImage("scuba.png");
}

  
void draw() {
  background(255);
  image(scuba,300,yPos);
  yPos=yPos+3;
  
  
  fill(0);
  text(message1,10,35);
}
