void setup(){
  size(800,800);
  frameRate(4);
  strokeWeight(4);
    fill(255,255,255);
    rect(0,0,800,800);
}

int i=0,m=0;
int x=0,y=0,a=0,b=0;
void draw(){
  m=int(random(7))+7;
  if(i<m){
    stroke(0,0,0);
    y=int(random(800));
    line(0,y,800,y);
    x=int(random(800));
    line(x,0,x,800);
    i++;
   b=int(random(100))+1;
   if(b>=0 & b<=20){fill(255,50,50);}
   else if(b>=21 & b<=60){fill(50,50,255);}
   else if(b>=61 & b<=90){fill(255,255,50);}
      else if(b>=90 & b<=100){fill(255,255,255);}
   a=int(random(4));
   if(a==0){rect(0,0,x,y);}
   if(a==1){rect(x,y,800,800);}
   if(a==2){rect(x,0,800,y);}
   if(a==3){rect(0,y,x,800);}
  }
  if(i==m){
    fill(255,255,255);
    rect(0,0,800,800);
      i=0;
  }
}
