// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

class Ball {

  int radius, xVelocity, yVelocity, xPos, yPos, rScale, gScale, bScale;
  color c;
  // ^, rScale, gScale, bScale^
  Ball(int r) {
    radius = r;
    rScale = (int)(random(256));
    gScale = (int)(random(256));
    bScale = (int)(random(256));
    xVelocity = (int)(random(24)+1);
    yVelocity = (int)(random(24)+1);
    xPos = (int)(random(600));
    yPos = (int)(random(600));
    //c = color(rScale,gScale,bScale);
    c = color(rScale,gScale,bScale);
    fill(c);
    
    ellipse(xPos, yPos, radius/2, radius/2);
  }

  /*void colorize() {
    //c = color(rScale,gScale,bScale);
    //(rScale, gScale, bScale);
    //fill(c);
    //noStroke();
  }*/

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
