void  setup() {

  size (400, 400); 

  //move the origin
  translate(width/2, height); 

  //thicker lines
  strokeWeight(5); 

  //make the tree upright 
  rotate(radians(-90)); 

  //start drawing tree
  drawTree(2); //two gnereations of base, left branch, right branch
}

void drawTree(int depth) {

  if (depth > 0) {
    //drawbase
    stroke( 0, 0, 225); //blue
    line( 0, 0, 100, 0); //draw along the x-axis 

    //move to the end of the base 
    translate( 100, 0); 

    //draw left branch
    pushMatrix();
    rotate(radians(-10));
    stroke( 255, 0, 0); //red
    line ( 0, 0, 100, 0); //draw along the a-xis 
    translate(100,0); //translate to end of branch 
    drawTree(depth - 1); 
    popMatrix();

    //draw right branch
    pushMatrix();
    rotate(radians(10));
    stroke( 0, 255, 0); //green 
    line ( 0, 0, 100, 0); //draw along the a-xis 
    translate(100,0); //translate to end of branch 
    drawTree(depth - 1); 
    popMatrix();
    
     //draw left branch
    pushMatrix();
    rotate(radians(-25));
    stroke( 255, 0, 0); //red
    line ( 0, 0, 100, 0); //draw along the a-xis 
    translate(100,0); //translate to end of branch 
    drawTree(depth - 1); 
    popMatrix();
    
    //draw right branch
    pushMatrix();
    rotate(radians(25));
    stroke( 0, 255, 0); //green 
    line ( 0, 0, 100, 0); //draw along the a-xis 
    translate(100,0); //translate to end of branch 
    drawTree(depth - 1); 
    popMatrix();
  }
}
