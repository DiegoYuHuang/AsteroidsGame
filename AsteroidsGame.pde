Star[] nightsky = new Star[200];
Spaceship ship = new Spaceship();

public void setup()
{
  size(500,500);
  for(int i=0; i<nightsky.length; i++){
    nightsky[i] = new Star();
  }
}
public void draw()
{
  background(0);
  for(int i=0; i<nightsky.length; i++){
    nightsky[i].show();
  }
  ship.show();
  ship.move();
}

public void keyPressed(){
   if (key == 'h')
  {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setDirection((double)(Math.random()*360));
    ship.setCenterX((double)(Math.random()*500));
    ship.setCenterY((double)(Math.random()*500));
  }
  if (key == 'w')
  {
    ship.accelerate(0.2);
  }
  if (key == 's')
  {
    ship.accelerate(-0.2); 
  }
  if (key == 'a')
  {
   ship.turn(-10); 
  }
  if (key == 'd')
  {
   ship.turn(10); 
  }
}

