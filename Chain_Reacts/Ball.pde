// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

class Ball {

  int radius, xVelocity, yVelocity, xPos, yPos;
  color RGB; // to hold RGB values

  Ball(int r) {
    radius = r;
    xVelocity = (int)(random(24)+1);
    yVelocity = (int)(random(24)+1);
    xPos = (int)(random(600));
    yPos = (int)(random(600));
    
    int rScale = (int)(random(256));
    int gScale = (int)(random(256));
    int bScale = (int)(random(256));
    RGB = color(rScale, gScale,bScale);
    
    fill(RGB);  // fill first time/when Ball constructed
    ellipse(xPos, yPos, radius/2, radius/2);
  }
}
