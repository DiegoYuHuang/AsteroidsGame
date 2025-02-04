Star[] nightsky = new Star[200];
Spaceship ship = new Spaceship();
//Bullet bob = new Bullet(ship);
ArrayList<Asteroid> asteroidsArray = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();

public void setup()
{
  size(500,500);
  for(int i=0; i<nightsky.length; i++){
    nightsky[i] = new Star();
  }
  for(int i=0; i<10; i++){
    Asteroid bob = new Asteroid();
    asteroidsArray.add(bob);
  } 
}

public void draw()
{
  background(0);
  for(int i=0; i<nightsky.length; i++){
    nightsky[i].show();
  }
  for (int i=0; i<asteroidsArray.size();i++){
  asteroidsArray.get(i).show();
  asteroidsArray.get(i).move();
  float d = dist(asteroidsArray.get(i).getMyX(), asteroidsArray.get(i).getMyY(), ship.getMyX(), ship.getMyY());{
      if (d< 15){asteroidsArray.remove(i);}
    }
  }
  ship.show();
  ship.move();
  for(int i=0; i<shots.size();i++){
    shots.get(i).move();
    shots.get(i).show();
  }
  
  for(int i=0; i<shots.size();i++){
    for (int j=0; j<asteroidsArray.size();j++){
        float d = dist(asteroidsArray.get(j).getMyX(), asteroidsArray.get(j).getMyY(), shots.get(i).getMyX(), shots.get(i).getMyY());{
          if (d< 15){
          asteroidsArray.remove(j);
          shots.remove(i);
          break;
        }
      }
    }
  }
}

public void keyPressed(){
   if (key == 'h')
  {
    ship.setXspeed(0);
    ship.setYspeed(0);
    ship.setDirection((double)(Math.random()*360));
    ship.setCenterX((float)(Math.random()*500));
    ship.setCenterY((float)(Math.random()*500));
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
  else if(key == ' ')
    shots.add(new Bullet(ship));
}
