String message = "This spring, the smog is so thick\nI can’t see the stars, which means\nthere aren’t any stars left.";

PFont f;  
float x;  
int index = 0;

void setup() {
  f = createFont("OpenDyslexic", 20, true);

  x = width; 
  size(626, 438);
  background(0);
  noStroke();
}

void draw() {     
  fill(255);
  textFont(f);
  textAlign(CENTER);
  text(message, 313, 190);

  fill(0, 0);
  rect(0, 0, width, height);

  fill(80);
  ellipse(random(width), random(height), 200, 200);
}
