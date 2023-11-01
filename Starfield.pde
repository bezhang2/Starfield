Particle[] willy;
void setup() {
  size(500, 500);
  background(255);
  willy = new Particle[50];
  for (int i = 0; i < 10; i++) {
    willy[i] = new dexter();
  }
  for (int i = 10; i < willy.length; i++) {
    willy[i] = new Particle();
  }
}
void draw() {
  background(255);
  for (int i = 0; i < willy.length; i++) {
    willy[i].move();
    willy[i].reset();
    willy[i].show();
  }
}

class Particle {
  double myX, myY, mySpeed, myAngle;
  int myColor, myWidth, myHeight;
  Particle() {
    myX = myY = 250;
    myAngle = (Math.random() * Math.PI) * 2;
    mySpeed = 900000;
    myColor = color(#a6a8ff);
    myWidth = 20;
    myHeight = 20;
  }
  void show() {
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, myWidth, myHeight);
  }
  void move() {
    myX += (double)(Math.cos(myAngle) * mySpeed);
    myY += (double)(Math.sin(myAngle) * mySpeed);
  }
  void reset() {
    if (myY >= 500 && myX >= Math.random() * 500) {
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if (myY >= Math.random() * 500 && myX >= 500) {
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if (myY <= 0 && myX <= 0) {
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if (myY <= 0 && myX >= Math.random() * 500) {
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if (myY >= Math.random() * 500 && myX <= 0) {
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
  }
}
class dexter extends Particle {
  dexter() {
    myX = myY = 250;
    myAngle = (Math.random() * Math.PI) * 2;
    mySpeed = Math.random() * 5 + 1;
    myColor = color(0);
    myWidth = 30;
    myHeight = 30;
  }
}
