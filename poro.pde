class poro {
  //construct
  poro(int i){
    x=200;
    y=250;
    d=1*i;
  }
  poro(float a, float b, int c)
  {
    x=a; y=b; d=c;
  }
  //member data
  float x, y, d;
  //member function
  void dp() {
    fill(255);
    circle(x, y, d*12);
    fill(150, 75, 0);
    circle(x-d*3, y-d*2, d*2);
    fill(255);
    arc(x-2*d, y-3*d, d*2, d*2, PI/2, PI);
    strokeWeight(d/3);
    stroke(150, 75, 0);
    arc(x+3*d, y-d*2, d*2, 2*d, PI, 2*PI);
    strokeWeight(d/5);
    stroke(0);
    arc(x-2*d, y, 4*d, 2*d, 0, PI);
    arc(x+2*d, y, 4*d, 2*d, 0, PI);
    strokeWeight(1);
    fill(255, 192, 203);
    arc(x, y+d, 5*d, 5*d, 0, PI);
    fill(111, 79, 40);
    beginShape();
    vertex(x+3*d, y-5*d);
    vertex(x+d*3, y-6*d);
    vertex(x+d*5, y-7*d);
    vertex(x+d*7, y-6*d);
    vertex(x+d*8, y-4*d);
    vertex(x+d*6, y-5*d);
    vertex(x+d*5, y-5*d);
    vertex(x+4*d, y-4*d);
    endShape();
    beginShape();
    vertex(x-3*d, y-5*d);
    vertex(x-d*3, y-6*d);
    vertex(x-d*5, y-7*d);
    vertex(x-d*7, y-6*d);
    vertex(x-d*8, y-4*d);
    vertex(x-d*6, y-5*d);
    vertex(x-d*5, y-5*d);
    vertex(x-4*d, y-4*d);
    endShape();
  }
  void move(int e)
  {
    float v=random(7,12);
    if(e==0)
    {
      y-=v;
      if(y<0)
      {
        y=height;
      }
    }   
    else if(e==1)
    {
      y+=v;
      if(y>height)
      {
        y=0;
      }
    }
    
  }
}
