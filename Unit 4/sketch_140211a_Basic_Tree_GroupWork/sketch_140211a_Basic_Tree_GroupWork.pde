void setup() {
  size(800, 800);

  //move the orgin
  translate(width/2, height);

  //thicker lines
  strokeWeight(6);
    stroke(93,50,23);

  // make the tree upright
  rotate(radians(-90));
  drawTreeRight(5);
  drawTreeRight(5);

  drawTreeRight(6); // with five generations
}

void drawTreeRight(int depth) {

  if (depth > 0) {
    //draw base  
    line(0, 0, 50, 0); //draw along the x-axis

    //move to the end of the base 
    translate (37, 0);
    

    //draw left branch 
    pushMatrix();
    rotate (radians(-15));
    line(0, 0, 50, 0);  //<>//
    translate(50, 0); // translate to end of branch before drawing 
    drawTreeRight(depth - 1);
    popMatrix();
    stroke(38, 118, 62);
    //draw right branch 
    pushMatrix();
    rotate (radians(15));
    line(0, 0, 50, 0); //<>//
    translate(50, 0); // translate to end of branch before drawing
    drawTreeRight(depth - 1);
    popMatrix();
    
    stroke(34, 100, 54);
    //draw left branch 
    pushMatrix();
    rotate (radians(-28));
    line(0, 0, 50, 0); 
    translate(50, 0); // translate to end of branch before drawing 
    drawTreeRight(depth - 1);
    popMatrix();
    stroke(23, 93, 32);

    //draw right branch 
    pushMatrix();
    rotate (radians(28));
    line(0, 0, 50, 0);
    translate(50, 0); // translate to end of branch before drawing
    drawTreeRight(depth - 1);
    popMatrix();
  }
}
