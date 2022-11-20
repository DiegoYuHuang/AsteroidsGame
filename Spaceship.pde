class Spaceship extends Floater  
{  
   public Spaceship() {
   corners = 4;
   xCorners = new int[] {-8, -2, -8, 16};
   //xCorners = new int[] {}; can use this too
   yCorners = new int[] {-8, 0, 8, 0};
   myColor = 255;
   myCenterX = 250;
   myCenterY = 250;
   myXspeed = 0;
   myYspeed = 0;
   }
   
   public void setXspeed(double x){
     myXspeed = x;
   }
   public void setYspeed(double y){
     myYspeed = y;
   }
   public void setDirection(double d){
     myPointDirection = d;
   }
   public void setCenterX(double c){
     myCenterX = c;
   }
   public void setCenterY(double y){
     myCenterY = y;
   }
}
