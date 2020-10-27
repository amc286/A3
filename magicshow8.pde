int xPos=0;
int yPos=0;
PImage payphone;
PFont f;
int counter;
String message1 = "For the pastel Easter basket, the kettle\nof hawks instead of white doves, the fishbowl\nand ceramic scuba diver who stands atop glow-\nin-the-dark rocks, for the pay phone";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  payphone = loadImage("payphone.png");
}

  
void draw() {
  background(255);
  image(payphone,240,yPos);
  yPos=yPos+2;
  
  
  fill(0);
  text(message1,10,35);
}
