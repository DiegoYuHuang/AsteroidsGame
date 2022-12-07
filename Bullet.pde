class Bullet extends Floater{
  Bullet(Spaceship ship){
    myCenterX = ship.getMyX();
    myCenterY = ship.getMyY();
    myXspeed = ship.getMyXspeed();
    myYspeed = ship.getMyYspeed();
    myPointDirection = ship.getMyPointDirection();
    //accelerate(.6);
  }
  public void show(){
  fill(255);
  ellipse(myCenterX,myCenterY,10,10);
  }
  public void move(){
    accelerate(.6);
    super.move();
  }
  public float getMyX(){
    return myCenterX;
  }
  public float getMyY(){
    return myCenterY;
  }
};
