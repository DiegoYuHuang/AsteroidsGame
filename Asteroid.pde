class Asteroid extends Floater  
{  double rotSpeed = Math.random()*3;
   public Asteroid() {
   corners = 6;
   xCorners = new int[] {-11, 7, 13, 6, -11, -5};
   yCorners = new int[] {-8, -8, 0, 10, 8, 0};
   myColor = 255;
   myCenterX = (float)Math.random()*500;
   myCenterY = (float)Math.random()*500;
   myXspeed = Math.random()*4;
   myYspeed = Math.random()*4;
   }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public float getMyX(){
    return myCenterX;
  }
  
    public float getMyY(){
    return myCenterY;
  }
}
