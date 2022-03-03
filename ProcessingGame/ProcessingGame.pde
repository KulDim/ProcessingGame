Player player = new Player("player");

void setup()
{
  size(640, 360);
  frameRate(1000);
  player.position(new PVector(50, 50));
  player.speed(120);
  player.control(87,68,65,83);  
}

void draw()
{
  background(0);
  ellipse(player.position().x, player.position().y, 20, 20);
  player.movement();
}
