int xPos=0;
int yPos=0;
PImage crystal;
PFont f;
int counter;
String message1 = "but she reaches in and brings forth a crystal chandelier\nwith its candles still lit.";


void setup() {
  size (626,438);
  smooth();
  background(0);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",30,true);
  textFont(f, 20);
  crystal = loadImage("crystal.png");
}

  
void draw() {
  background(0);
  image(crystal,60,yPos);
  yPos=yPos-2;
  
  typewriteText();

}
 
void typewriteText(){
  if (counter < message1.length())
    counter++;
  text(message1.substring(0, counter), 10, 400, width, height);
}
