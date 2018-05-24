// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

class Ball {

  int radius, rScale, gScale, bScale, xVelocity, yVelocity, xPos, yPos;

  Ball(int r) {
    radius = r;
    rScale = (int)(random(256));
    gScale = (int)(random(256));
    bScale = (int)(random(256));
    xVelocity = (int)(random(24)+1);
    yVelocity = (int)(random(24)+1);
    xPos = (int)(random(600));
    yPos = (int)(random(600));
    this.ballColor();
    ellipse(xPos, yPos, radius/2, radius/2);
  }

  void ballColor() {
    color c = color(rScale, gScale, bScale);
    fill(c);
  }

  /*void move() {
   if (xPos <= 0 || xPos >= 600)
   { 
   xVelocity *= -1;
   }
   if (yPos <= 0 || yPos >= 600)
   { 
   yVelocity *= -1;
   }
   ellipse(xPos+xVelocity, yPos+yVelocity, radius/2, radius/2);
   }
   */
}
