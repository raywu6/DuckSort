// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW54 -- Ain't Even From the A-Town
// T 2018-05-29

/* TODO LIST
 at launch, all balls in motion (X)
 upon first mouse click,
 ball is born at click location
 this ball starts expanding,
 until it reaches threshold size,
 at which point it begins 2, until its radius reaches 0, at which point it dies
 if any other roaming ball comes into contact with a 1 or 2 ball,
 it stops 0
 and starts the grow/shrink process
 */

import java.util.ArrayList;

// ArrayList to hold all balls
ArrayList<Ball> allBalls = new ArrayList<Ball>();
ArrayList<Ball> growBalls = new ArrayList<Ball>();

void setup() {
  size(600, 600); // creates 600x600 canvas
  background(0);  // black background

  // create 30 balls
  for (int i = 0; i < 30; i++) {
    Ball newBall = new Ball(50);
    newBall.state = 0;
    allBalls.add(newBall);
  }
}

void draw() {
  clear();

  for (Ball b : allBalls) {
    fill(b.RGB);  // if this is not here, next line will create ellipse using colors from last Ball created
    ellipse(b.xPos, b.yPos, b.radius/2, b.radius/2);  

    if (b.state == 0) {  // if ball is moving
      if (b.xPos <= 0 || b.xPos >= 600)  // hit wall
      { 
        b.xVelocity *= -1;
      }
      if (b.yPos <= 0 || b.yPos >= 600)  // hit wall
      { 
        b.yVelocity *= -1;
      }

      b.xPos += b.xVelocity;
      b.yPos += b.yVelocity;
    }

    if (b.state == 1) {  // if ball is growing
      b.xVelocity = 0;   // stop moving
      b.yVelocity = 0;
      b.radius += b.CHANGE_FACTOR;   // grow ball
    }    

    if (b.state == 2) {  // if ball is shrinking
      b.xVelocity = 0;   // stop moving
      b.yVelocity = 0;
      b.radius -= b.CHANGE_FACTOR;  // shrink ball
    }    

    if (b.state == 3) {   // if ball is dead
      //allBalls.remove(b);
      b.RGB = color(0, 0, 0);  // make black
    }
    for(Ball ball : growBalls ){
      ball.updateState(b);
    }
  }
}

void mouseClicked() {
  Ball mouseBall = new Ball(mouseX, mouseY, 0);
  mouseBall.setState(1);
  allBalls.add(mouseBall);
  growBalls.add(mouseBall);
}
