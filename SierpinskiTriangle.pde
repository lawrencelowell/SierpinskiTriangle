int k = (int)(Math.random()*150);
public void setup()

{

  size(600,600);
  sierpinski(0,600,600,(float)Math.random()*155+100,(float)Math.random()*155+100,(float)Math.random()*155+100);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len, float a,float b, float c) 
{
  if(len<= k)
  triangle(x,y,x+len,y,x+len/2,y-len);
  else{
  fill(a,b,c);
  triangle(x,y,x+len,y,x+len/2,y-len);
  sierpinski(x,y,len/2,a*0.84,b*0.84,c*0.84);
  sierpinski(x+len/2,y,len/2,a*0.84,b*0.84,c*0.84);

  sierpinski(x+len/4,y-len/2,len/2,a*0.84,b*0.84,c*0.84);
  
}
}
