int xPos=0;
int yPos=0;
PImage mattress;
PFont f;
int counter;
String message1 = "For the pastel Easter basket, the kettle\nof hawks instead of white doves, the fishbowl\nand ceramic scuba diver who stands atop glow-\nin-the-dark rocks, for the pay phone, the umbrellas, \nribbed and open, the top layer of frozen lake\nand the ice skates. For the twinkling music box\nand the green sweater I thought I’d lost in Michigan.\nFor the mattress and box spring I’m grateful";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  mattress = loadImage("mattress.png");
}

  
void draw() {
  background(255);
  image(mattress,100,yPos);
  yPos=yPos+2;
  
  
  fill(0);
  text(message1,10,35);
}
