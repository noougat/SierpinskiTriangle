int drag =0;
public void setup()
{
 size(500,500);
 background(255);
}
public void draw()
{
  background(255);
sierpinski(mouseX-250,mouseY + 150,500+drag);
}
public void mouseMoved()//optional
{
 drag = drag+25;
}
public void sierpinski(int x, int y, int len) 
{
  //triangle(x,y,x+len/2,y-len,x+len,y);
  if(len <= 20)
  {
  triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else
  {
  sierpinski(x,y,len/2);
  sierpinski(x+len/2,y,len/2);
  sierpinski(x+len/4,y-len/2,len/2);
  }

}