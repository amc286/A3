int yPos=438;
PFont f;
String message = "and go to sleep with the sheets pulled up.";

void setup() {
  size(626,438);
  smooth();
  background(255);
  noStroke();
  fill(255);
  f = createFont("OpenDyslexic", 20, true);
}

void draw()
{
  fill(0);
  textFont(f);
  textAlign(CENTER);
  text(message, 313, 200);
  
  fill(247, 243, 230);
  rect(50,40,250,100);
  rect(320,40,250,100);
    
  rect(0, yPos, width, height);
  yPos=yPos-1;
}
