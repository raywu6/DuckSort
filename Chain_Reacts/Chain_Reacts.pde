// DuckSort (Seong Hyeon "Ryan" Kim, Woosuk Lee, Raymond Wu)
// APCS2 pd8
// HW53 -- All That Bouncin’ . . . Break!
// W 2018-05-23

import java.util.ArrayList;

// ArrayList to hold all balls
ArrayList<Ball> allBalls = new ArrayList<Ball>();

void setup() {
  size(600, 600); // creates 600x600 canvas
  background(0);  // black background

  // create 30 balls
  for (int i = 0; i < 30; i++) {
    Ball newBall = new Ball(100);
    allBalls.add(newBall);
  }
}

void draw() {
  for (Ball b : allBalls) {
    b.move();
  }
}