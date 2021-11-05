color backgroundColor = color(0);
TestLB testLB; // Create instance of TestLB class
//--------------------------------------------
//------------------------------------------------------

void setup() {
  size(1200,800);
  testLB = new TestLB(backgroundColor);
}

void draw() {
  testLB.draw();
}

//------------------------------------------------------
//--------------------------------------------
// DEFINE MISCELLANEOUS FUNCTIONS HERE!

//--------------------------------------------
//------------------------------------------------------


//------------------------------------------------------
//--------------------------------------------
// DEFINE MISCELLANEOUS CLASSES HERE!
/*
  NOTE: To make things easy, put any code you want to run
        on the LED wall in the draw() method of the TestLB()
        class defined below.
*/

// [New class here]

public class TestLB {
  // define local variables here!
  color bkgrd;
  color bc;
  int rad = 100;
  float xpos, ypos;
  float xspeed = 7.5;
  float yspeed = 7.5;
  int xdirection = 1;
  int ydirection = 1;

  // Constructor: [define relevant parameters in the parenthesis of TestLB()]
  public TestLB(color background) {
    this.bkgrd = background;
    // define class attributes/fields here!
      xpos = width/4;
    ypos = height/4;
    
  }

  public void draw() {
    // Add the code you want to be on the wall here.
    // The following three lines are just an example.
    background(this.bkgrd);    // Make black background
    
    noStroke();
    frameRate(30);
    ellipseMode(RADIUS);
  xpos = xpos + ( xspeed * xdirection );
  ypos = ypos + ( yspeed * ydirection );
  
  // TestLB to see if the shape exceeds the boundaries of the screen
  // If it does, reverse its direction by multiplying by -1
  if (xpos > width-rad || xpos < rad) {
    xdirection *= -1;

    fill(random(255), random(255), random(255));
  }
  if (ypos > height-rad || ypos < rad) {
    ydirection *= -1;

    fill(random(255), random(255), random(255));
  }
  
 
 
  // Draw the shape
  ellipse(xpos, ypos, rad, rad);
    
  }
}

//--------------------------------------------
//------------------------------------------------------
