// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

import java.util.ArrayList;

// ArrayList to hold all balls
ArrayList<Ball> allBalls = new ArrayList<Ball>();
//Ball Ryan;

void setup() {
  size(600, 600); // creates 600x600 canvas
  background(0);  // black background
  //Ryan = new Ball(100);
  // create 30 balls
  for (int i = 0; i < 30; i++) {
    Ball newBall = new Ball(100);
    //color c = color(newBall.rScale,newBall.gScale,newBall.bScale);
    //fill(c);
    //newBall.colorize();
    allBalls.add(newBall);
  }
  /*  for (int j = 0; j < 1; j++) {
   Ball newBall = new Ball(100);
   allBalls.add(newBall);
   }
   */
}

boolean runOnce = true;
void draw() {
  clear();
  
  if (runOnce) {
    for (Ball b : allBalls) {
      println(b.c);
    }
    println(allBalls.get(29).c);
    runOnce=false;
  }
  
  for (Ball b : allBalls) {
    //Ryan.move();
    if (b.xPos <= 0 || b.xPos >= 600)
    { 
      b.xVelocity *= -1;
    }
    if (b.yPos <= 0 || b.yPos >= 600)
    { 
      b.yVelocity *= -1;
    }
    ellipse(b.xPos, b.yPos, b.radius/2, b.radius/2);
    b.xPos += b.xVelocity;
    b.yPos += b.yVelocity;
  }
}
