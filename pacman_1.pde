class pac
{
  //constructor
  pac()
  {
    x=200;
    y=200;
    d=120;
    ang=PI/6;
  }
  pac(float a, float b, float c,int vel)
  {
    x=a;
    y=b;
    d=c;
    ang=PI/6; //x,y 초기 위치 c 크기
    v=vel;
  }
  //member data
  float x, y, d, ang;
  int v;
  //member function
  void display() //draw pacman
  {
    background(255,255,255);
    strokeWeight(d/16);
    fill(255, 255, 0);
    arc(x, y, d, d, ang, 2*PI-ang); //draw face
    fill(0, 0, 0);
    circle(x+d/8, y-7*d/24, d/12);  //draw eyes
    line(x, y, x+d/2*cos(ang), y-d/2*sin(ang));
    strokeWeight(d/16);
    line(x, y, x+d/2*cos(ang), y+d/2*sin(ang));
    strokeWeight(d/16);
  }
  void move()
  {
      if (key=='d')
      {
        x+=v;
      } else if (key=='a')
      {
        x-=v;
      } else if (key=='w')
      {
        y-=v;
      } else if (key=='s')
      {
        y+=v;
      }
     if (x>width) x=0;  // 팩맨이 바깥으로 나가면 반대편에서 돌아온다.
      if (y>height) y=0;
      if (x<0) x=width;
      if (y<0) y=height;

  }
}
