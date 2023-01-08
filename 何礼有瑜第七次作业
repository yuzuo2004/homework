PImage img;
int smallPoint, largePoint;

void setup() {
  size(632,194);
  img = loadImage("test.jpeg");
  smallPoint = 4;
  largePoint = 400;
  imageMode(CENTER);
  noStroke();
  background(255);
}

void draw() {
  float pointillize = map(mouseX, 0, width, smallPoint, largePoint);
  int x = int(random(img.width));
  int y = int(random(img.height));
  color pix = img.get(x, y);
  fill(pix, 128);
  rect(x, y, pointillize, pointillize);
}
