public int repeat=10;
public boolean zoomOut=false;

public void setup() {
  size(500, 500);
  noFill();
  stroke(255, 0, 255);
  rectMode(CENTER);
}

public void draw() {
  background(0);
  text(repeat, 10, 20);
  if (repeat>650) {zoomOut=true;}
  if (repeat<=-5) {zoomOut=false;}
  if (zoomOut==true) {
    repeat-=5;
    text("Backing up!", 10, 40);
  } else {repeat+=2;}
  fractal(250, 250, repeat);
}

public void fractal(int x, int y, int recurse) {
  rect(x, y, recurse, recurse);
  if (recurse > 10) {
    fractal(x-recurse/2, y, recurse-50);
    fractal(x+recurse/2, y, recurse-50);
  }
}
