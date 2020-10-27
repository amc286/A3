int xPos=0;
int yPos=0;
PImage easter;
PFont f;
int counter;
String message1 = "For the pastel Easter basket";

void setup() {
  size (626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic",20,true);
  textFont(f, 20);
  easter = loadImage("easter.png");
}

  
void draw() {
  background(255);
  image(easter,300,yPos);
  yPos=yPos+3;
  
  fill(0);
  typewriteText();

}
 
void typewriteText(){
  if (counter < message1.length())
    counter++;
  text(message1.substring(0, counter), 10, 10, width, height);
}
