/**
 * Storing Input. 
 * 
 * Move the mouse across the screen to change the position
 * of the circles. The positions of the mouse are recorded
 * into an array and played back every frame. Between each
 * frame, the newest value are added to the end of each array
 * and the oldest value is deleted. 
 */
 
int num = 60;
float mx[] = new float[num];
float my[] = new float[num];
int[] xvals;
int[] yvals;
int[] bvals;
int x,y;
void setup() {
  size(640, 360);
  noStroke();
  fill(255, 153); 
  noSmooth();
  xvals = new int[width];
  yvals = new int[width];
  bvals = new int[width];
}
void draw() {
  background(51); 
  
  // Cycle through the array, using a different entry on each frame. 
  // Using modulo (%) like this is faster than moving all the values over.
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;

     for (int i = 1; i < width; i++) { 
    xvals[i-1] = xvals[i]; 
    yvals[i-1] = yvals[i];
    bvals[i-1] = bvals[i];
  } 
  // Add the new values to the end of the array 
  xvals[width-1] = mouseX; 
  yvals[width-1] = mouseY;
  
  if (mousePressed == true) {
    bvals[width-1] = 0;
  } else {
    bvals[width-1] = height/3;
  }
  
  fill(255);
  noStroke();
  rect(0, height/3, width, height/3+1);

  for(int i = 1; i < width; i++) {
    // Draw the x-values
    stroke(255);
    point(i, map(xvals[i], 0, width, 0, height/3-1));
    
    // Draw the y-values
    stroke(0);
    point(i, height/3+yvals[i]/3);
    
    // Draw the mouse presses
    stroke(255);
    line(i, (2*height/3) + bvals[i], i, (2*height/3) + bvals[i-1]);
  }
  
  for (int i = 0; i < num; i++) {
    // which+1 is the smallest (the oldest in the array)
    int index = (which+1 + i) % num;
      if (mousePressed == true) {
    y=y+1;
  } else{
  y=y-1;
  }
    if (y>20){
  x=x+1;
  y=10;
}
 if (y<2){
  x=x-1;
  y=10;
}
  if (x>255){
  x=255;}
  if(x==0){x=1;}
  fill(x,x,x);
    ellipse(mx[index], my[index], i, i);
  }

}
