Lights f = new Lights();
Lights[] Lighter = new Lights[900];
void setup() {
  size(700, 700);
  noStroke();
  for (int i = 10; i < Lighter.length; i++) {
    Lighter[i] = new Lights();
  }
  for (int i = 0; i < 10; i++) {
    Lighter[i] = new Lights2();
  }
}
void draw() {
  background(0, 0, 0);
  fill(49, 99, 0);

  f.show();
  f.explosion();
  for (int i = 0; i < Lighter.length; i++) {
    Lighter[i].show();
    Lighter[i].explosion();
  }
}



class Lights {
  double myX, myY, mySpeed, mySize, myColor1, myColor2, myColor3, myOpacity;
  double myAngle;

  Lights() {
    myX = 350;
    myY = 350;
    mySize = (int)(Math.random()*40) + 20;
    mySpeed = (Math.random()*2) + 1;
    myColor1 = (int)(Math.random()*200 + 10);
    myColor2 = (int)(Math.random()*200 + 10);
    myColor3 = (int)(Math.random()*200 + 10);
    myOpacity = (int)(Math.random()*50)+10;
    myAngle=(Math.random()*2)*Math.PI;
  }
  void show() {
    fill((int)myColor1, (int)myColor2, (int)myColor3, (float)myOpacity);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }


  void explosion()
  {
    myX=myX+Math.cos(myAngle)*mySpeed;
    myY=myY+Math.sin(myAngle)*mySpeed;
  }
  void mousePressed()
  {
    redraw();
  }
}
class Lights2 extends Lights {
  Lights2() {
    myX = 350;
    myY = 350;
    myColor1 = (int)(Math.random()*50) + 20;
    myColor2 = (int)(Math.random()*50) + 20;
    myColor3 = (int)(Math.random()*50) + 20;
    mySpeed = 0.5;
    myOpacity = (int)(Math.random()*60) + 10;

    mySize = (int)(Math.random()*40) + 120;
  }
}
