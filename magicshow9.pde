int xPos=0;
int yPos=0;
PImage umbrella0;
PImage umbrella1;
PImage umbrella2;
PFont f;
int counter;
String message1 = "For the pastel Easter basket, the kettle\nof hawks instead of white doves, the fishbowl\nand ceramic scuba diver who stands atop glow-\nin-the-dark rocks, for the pay phone, the umbrellas, \nribbed and open";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  umbrella0 = loadImage("umbrella0.png");
  umbrella1 = loadImage("umbrella1.png");
  umbrella2 = loadImage("umbrella2.png");
}

  
void draw() {
  background(255);
  image(umbrella0,300,yPos);
  image(umbrella2,200,yPos);
  image(umbrella1,250,yPos);
  yPos=yPos+2;
  
  
  fill(0);
  text(message1,10,35);
}
