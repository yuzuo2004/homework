float []pointsX, pointsY;
float temp;
int len, heng;
int num;
void setup() {
  size(800, 800);
  num =10;
  pointsX = new float[num];
  pointsY = new float[num];
  heng=0;
  for (int i = 0; i < num; i++) {
    len = int(random(2));
    if (len==0) {
      pointsX[i] = int(random(600))+100;
      heng++;
    } else {
      pointsY[i] = int(random(600))+100;
    }

    for (int x=1; x<heng; x++ ) {
      for (int y=1; y<=x; y++ ) {
        if (pointsX[x]>pointsX[y]) {
          temp=pointsX[x];
          pointsX[x]=pointsX[y];
          pointsX[y]=temp;
        }
      }
    }

    for (int x=1; x<10-heng; x++ ) {
      for (int y=1; y<=x; y++ ) {
        if (pointsY[x]>pointsY[y]) {
          temp=pointsY[x];
          pointsY[x]=pointsY[y];
          pointsY[y]=temp;
        }
      }
    }
  }
}
int b;
void draw() {
  background(255);
  stroke(5);
  strokeWeight(5);
  frameRate(3);
  for (int n = 0; n <=heng; n++) {
    line(pointsX[n], 0, pointsX[n], 800);
  }
  for (int m = 0; m < 10-heng; m++) {
    line(0, pointsY[m], 800, pointsY[m]);
  }
  for (int m=0; m<(10-heng)*heng; m++){
  b =int(random(100))+1;
   if(b>=0 & b<=20){fill(255,50,50);}
   else if(b>=21 & b<=60){fill(50,50,255);}
   else if(b>=61 & b<=90){fill(255,255,50);}
    else if(b>=61 & b<=100){fill(255,255,50);}
  int x=int(random(heng)+1);
  int y=int(random(10-heng)+1);
  rect( pointsX[x],pointsY[y], pointsX[1],pointsY[1]);}
}
