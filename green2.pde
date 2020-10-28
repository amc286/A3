PFont f;
String message = " It’s pointless\nto argue against this, to say,\nno they’re on vacation, no\nthey’ll come back with new summer\nhats and an answer\nto my question:";
float a;

void setup() {
  size(626, 438);
  stroke(255);
  f = createFont("OpenDyslexic", 20, true);
  a = height/2;
} 

void draw() {
  background(0);
  fill(255);
  textFont(f);
  textAlign(CENTER);
  text(message, 313, 100);
  
  pushMatrix();
  translate(width*0.3, height*0.9);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
    
  pushMatrix();
  translate(width*0.1, height*0.1);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
  
  pushMatrix();
  translate(width*0.9, height*0.05);
  rotate(frameCount / -100.0);
  star(0, 0, 30, 70, 5); 
  popMatrix();
}

void star(float x, float y, float radius1, float radius2, int npoints) {
  float angle = TWO_PI / npoints;
  float halfAngle = angle/2.0;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius2;
    float sy = y + sin(a) * radius2;
    vertex(sx, sy);
    sx = x + cos(a+halfAngle) * radius1;
    sy = y + sin(a+halfAngle) * radius1;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
